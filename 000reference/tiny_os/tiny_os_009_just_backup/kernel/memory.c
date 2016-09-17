
#include "bootpack.h"

#define assert(A)   A

#define EFLAGS_AC_BIT       0x00040000
#define CR0_CACHE_DISABLE   0x60000000

unsigned int memtest(unsigned int start, unsigned int end) {
    int flag486 = 0;
    int eflags, cr0;

    eflags = io_load_eflags();
    eflags |= EFLAGS_AC_BIT;
    io_store_eflags(eflags);
    eflags = io_load_eflags();

    if (eflags & EFLAGS_AC_BIT) {
        flag486 = 1;
        eflags &= ~EFLAGS_AC_BIT;
        io_store_eflags(eflags);
    }

    if (flag486) {
        // disable cache
        cr0 = load_cr0();
        cr0 |= CR0_CACHE_DISABLE;
        store_cr0(cr0);
    }

    unsigned int i = memtest_sub(start, end);    

    if (flag486) {
        // enable cache
        cr0 = load_cr0();
        cr0 &= ~CR0_CACHE_DISABLE;
        store_cr0(cr0);
    }

    return i;
}

unsigned int memtest_sub(unsigned int start, unsigned int end) {
    int pattern = 0xaabbccdd;
    volatile int *start_ptr = (int *)start;
    volatile int *end_ptr = (int *)end;

    // 0x400    1KB
    // 0x1000   4KB
    // 0x10000  64KB

    for ( ; start_ptr < end_ptr; start_ptr += 0x10000) {
        volatile int data_old = *start_ptr;
        *start_ptr = pattern;
        *start_ptr += 1;
        volatile int data_new = *start_ptr;
        *start_ptr = data_old;
        if (data_new != pattern + 1) break;
    }

    return (unsigned int)start_ptr;
}


void memman_init(struct MEMMAN *man, unsigned int address, unsigned int size) {
    man->address = address;
    man->size = size;
    struct MEMBLOCK *head = (struct MEMBLOCK *)address;
    head->address = address;
    head->size = size;
    head->prev = head->next = 0;
    man->head = head;
}

unsigned int memman_total(struct MEMMAN *man) {
    struct MEMBLOCK *curr = man->head;
    unsigned int total = 0;
    while (curr != 0) {
        total += curr->size;
        curr = curr->next; 
    }
    return total;
}

unsigned int memman_alloc(struct MEMMAN *man, unsigned int size) {
    if (size == 0) return 0;
    struct MEMBLOCK *curr = man->head;
    unsigned int addr = 0;
    size = (size + 3) / 4 * 4;
    size += 12;
    while (curr != 0) {
        if (curr->size >= size) break;
        curr = curr->next;
    }
    if (curr == 0)
        return 0;

    if (curr->size - sizeof(struct MEMBLOCK) > size) {
        addr = curr->address + curr->size - size;
        // decrease curr's size
        curr->size -= size;
   } else {
        // remove curr from memory block list
        if (man->head == curr) man->head = curr->next;
        if (curr->prev) curr->prev->next = curr->next;
        if (curr->next) curr->next->prev = curr->prev;
        addr = curr->address;
    }

    if (addr != 0) {
        unsigned int *extra = (unsigned int *)addr;
        extra[0] = addr;
        extra[1] = size;
        extra[(size / 4) - 1] = 0xaabbccdd;
        return addr + 8;
    }

    return 0;
}

int memman_free(struct MEMMAN *man, unsigned int addr, unsigned int size) {
    if (addr == 0) return 0;
    addr -= 8;
    size = (size + 3) / 4 * 4;
    size += 12;
    unsigned int *extra = (unsigned int *)addr;

    assert(extra[0] == addr);
    assert(extra[1] == size);
    assert(extra[(size / 4) - 1] == 0xaabbccdd);

    if (extra[0] != addr) return -1;
    if (extra[1] != size) return -2;
    if (extra[(size / 4) - 1] != 0xaabbccdd) return -3;

    struct MEMBLOCK *temp = (struct MEMBLOCK *)addr;
    temp->prev = temp->next = 0;

    if (man->head == 0) {
        man->head = temp;
        return 0;
    }

    struct MEMBLOCK *curr = man->head;
    while (curr != 0) {
        if (curr->address > addr) {
            if (curr->prev) curr->prev->next = temp;
            temp->prev = curr->prev;
            temp->next = curr;
            curr->prev = temp;
            if (man->head == curr) man->head = temp;
            break;
        }
        if (curr->next == 0) {
            curr->next = temp;
            temp->prev = curr;
            break;
        }
        curr = curr->next;
    }
    assert(curr != 0);

    curr = temp;
    while (curr->prev != 0) {
        addr = curr->prev->address + curr->prev->size;
        if (addr == curr->address) {
            curr->prev->size += curr->size;
            // remove curr
            curr->prev->next = curr->next;
            if (curr->next) curr->next->prev = curr->prev;
            curr = curr->prev;
        } else {
            break;
        }
    }

    while (curr->next != 0) {
        addr = curr->address + curr->size;
        if (addr == curr->next->address) {
            curr->size += curr->next->size;
            // remove curr->next
            if (curr->next->next) curr->next->next->prev = curr;
            curr->next = curr->next->next;
        } else {
            break;
        }
    }

    return 0;
}

unsigned int memman_alloc_4k(struct MEMMAN *man, unsigned int size) {
    size = (size + 0xfff) & 0xfffff000;
    unsigned int addr = memman_alloc(man, size);
    return addr;
}

int memman_free_4k(struct MEMMAN *man, unsigned int addr, unsigned int size) {
    size = (size + 0xfff) & 0xfffff000;
    int ret = memman_free(man, addr, size);
    return ret;
}

//void memman_dump(struct MEMMAN *man) {
//    printf("memman total size:%d\n", memman_total(man));
//    struct MEMBLOCK *curr = man->head;
//    while (curr != 0) {
//        printf("memman block addr %p size %d\n", (void *)curr->address, curr->size);
//        curr = curr->next;
//    }
//}



