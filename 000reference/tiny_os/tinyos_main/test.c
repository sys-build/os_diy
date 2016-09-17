
int test_1(char a, short b, int c) {
    int res = 0;
    res = a * b;
    res = res + c;
    return res;
}

int test_2() {
    int res = 0;
    res = test_1(1,2,3);
    res /= 2;
    return res;
}

int main(int argc, char *argv[]) {

    return test_2();
}

