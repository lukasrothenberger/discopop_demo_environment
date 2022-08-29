//######################### Only modify file contents below this line

#include <stdlib.h>
#include <stdio.h>

int main(){
    int x = 42;
    int y = 42;
    for(int i = 0; i < 100; i++){
        x = x + i;
    }
    printf("The answer is: %d\n", x);
}
