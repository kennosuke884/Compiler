#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv){  /*argc:引数の個数  argv:引数の配列*/
    if(argc != 2){
        fprintf(stderr, "引数の個数が正しくありません\n");
        return 1;
    }
    printf(".intel_syntax noprefix\n");
    printf(".global main\n");
    printf("main:\n");
    printf("    mov rax, %d\n", atoi(argv[1]));  /*atoi:数値の文字列型データをlong型に変換*/
    printf("    ret\n");
    return 0;
}

/* argc = 2 */
/* argv[0] = ./9cc */
/* argv[1] = "入力数値" */
