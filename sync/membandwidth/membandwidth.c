#include <stdlib.h> 
// one megabyte
#define BLOCKSIZE 1024*1024

#define ALLOCBLOCKS 8

int main(int argc, char** argv) {
    int i = 0;
    void* blocks = malloc(BLOCKSIZE * ALLOCBLOCKS);
    
    // prevent compiler from being lazy
    i = *((int*)blocks + 4);

    free(blocks);
    return 0;
}
