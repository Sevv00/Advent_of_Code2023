#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include "day1.h"

#define ZERO_LEN 4
#define ONE_LEN 3
#define TWO_LEN 3
#define THREE_LEN 5
#define FOUR_LEN 4
#define FIVE_LEN 4
#define SIX_LEN 3
#define SEVEN_LEN 5
#define EIGHT_LEN 5
#define NINE_LEN 4

const char *numbers[] = {
        "zero", "one", "two" , "three", "four", "five", "six", "seven", "eight", "nine"
};

int get_number_from_letters(const char *line, ssize_t pos, ssize_t line_size, int index, size_t len){
    if(pos+len < line_size) {
        int res = strncmp(numbers[index], (line + pos), len);
        if (res == 0)
            return index;
    }
    return -1;
}

int number_from_letters(const char *line, ssize_t pos, ssize_t line_size){
    char c = *(line+pos);
    int res;
    switch (c) {
        case 'z':{
            return get_number_from_letters(line, pos, line_size, 0, ZERO_LEN);
        }
        case 'o': {
            return get_number_from_letters(line, pos, line_size, 1, ONE_LEN);
        }
        case 't':{
            res = get_number_from_letters(line, pos, line_size, 2, TWO_LEN);
            if(res == -1)
                return get_number_from_letters(line, pos, line_size, 3, THREE_LEN);
            else
                return res;
        }
        case 'f':{
            res = get_number_from_letters(line, pos, line_size, 4, FOUR_LEN);
            if(res == -1)
                return get_number_from_letters(line, pos, line_size, 5, FIVE_LEN);
            else
                return res;
        }
        case 's':{
            res = get_number_from_letters(line, pos, line_size, 6, SIX_LEN);
            if(res == -1)
                return get_number_from_letters(line, pos, line_size, 7, SEVEN_LEN);
            else
                return res;
        }
        case 'e':{
            return get_number_from_letters(line, pos, line_size, 8, EIGHT_LEN);
        }
        case 'n':{
            return get_number_from_letters(line, pos, line_size, 9, NINE_LEN);
        }
        default:
            break;
    }

    return -1;
}


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
            if(number1 == -1){
                if(isdigit(*(line+i)))
                    number1 = ((int)*(line+i))%48;
                else
                    number1 = number_from_letters(line, i, line_size);
            }
            if(number2 == -1){
                if(isdigit(*(line+(line_size-1-i))))
                    number2 = ((int)*(line+((line_size-1-i))))%48;
                else
                    number2 = number_from_letters(line, line_size-1-i, line_size);
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