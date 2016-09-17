
#include <stdio.h>
#include <assert.h>

struct MEMBLOCK {
    unsigned int address;
    unsigned int size;
    struct MEMBLOCK *prev, *next;
};

struct MEMMAN {
    unsigned int address;
    unsigned int size;
    struct MEMBLOCK *head;
};

void memman_init(struct MEMMAN *man, unsigned int address, unsigned int size);
unsigned int memman_total(struct MEMMAN *man);
unsigned int memman_alloc(struct MEMMAN *man, unsigned int size);
int memman_free(struct MEMMAN *man, unsigned int addr, unsigned int size);
unsigned int memman_alloc_4k(struct MEMMAN *man, unsigned int size);
int memman_free_4k(struct MEMMAN *man, unsigned int addr, unsigned int size);
void memman_dump(struct MEMMAN *man);

char mem_buf[1024];


int main(int argc, char *argv[]) {

    struct MEMMAN man;
    memman_init(&man, (unsigned int)mem_buf, sizeof(mem_buf));

    int mem1 = memman_alloc(&man, 1);
    int mem2 = memman_alloc(&man, 2);
    int mem16 = memman_alloc(&man, 16);
    int mem952 = memman_alloc(&man, 952);

    memman_dump(&man);
    memman_free(&man, mem1, 1);
    memman_dump(&man);
    memman_free(&man, mem16, 16);
    memman_dump(&man);
    memman_free(&man, mem952, 952);
    memman_dump(&man);
    memman_free(&man, mem2, 2);
    memman_dump(&man);

    return 0;
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
    return 0;
}

int memman_free_4k(struct MEMMAN *man, unsigned int addr, unsigned int size) {
    return 0;
}

void memman_dump(struct MEMMAN *man) {
    printf("memman total size:%d\n", memman_total(man));
    struct MEMBLOCK *curr = man->head;
    while (curr != 0) {
        printf("memman block addr %p size %d\n", (void *)curr->address, curr->size);
        curr = curr->next;
    }
}



