#include <unistd.h>
#include <stdlib.h>


int main(int argc, char *argv[])
{
    if (argc < 2) {
        exit(1);
    }

    char *a = argv[1];
    int time = atoi(a);

    sleep(time);
    return 0;
}