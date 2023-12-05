#include <stdio.h>
#include <ctype.h>

int sum_from_file(char  *filename){
    FILE *f = fopen(filename, "r");
    if(f == NULL)
        return -1;
    int sum = 0;
    int number1 = -1, number2 = -1;
    size_t len = 0;
    ssize_t line_size;
    char *line = NULL;

    while ((line_size = getline(&line, &len, f)) != -1) {
        for (int i = 0; i < line_size; ++i) {
            if(number1 == -1 && isdigit(*(line+i))){
                number1 = ((int)*(line+i))%48;
            }
            if(number2 == -1 && isdigit(*(line+(line_size-1-i)))){
                number2 = ((int)*(line+((line_size-1-i))))%48;
            }
            if(number1 != -1 && number2 != -1)
                break;
        }
        if(number1 == -1 || number2 == -1){
                sum += 0;
                continue;

        }
        sum += (number1 *10) + number2;
        number1 = -1;
        number2 = -1;
    }


    fclose(f);
    return sum;
}


int main() {
    int res = sum_from_file("../day1.txt");
    printf("Result %d", res);
    return 0;
}
