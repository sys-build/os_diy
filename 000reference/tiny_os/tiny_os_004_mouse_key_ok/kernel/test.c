#include <stdio.h>

struct PIXEL24 {
    char b, g, r;
};

struct PIXEL24 a = {1,2,3};

int main(int argc, char *argv[]) {
    int color = 0xaabbccdd;

    struct PIXEL24 pixel = *(struct PIXEL24 *) &color;

    printf("sizeof(PIXEL24) %d\n", sizeof(struct PIXEL24));

    return 0;
}
