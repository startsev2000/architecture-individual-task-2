#include <stdio.h>

char *input_numbers() {
    static char input[1000];
    int i = 0;
    int input_symbol;
    printf("%s", "Input digits in one line in any format. ");
    printf("%s", "If you want to end the input, press Enter.\n");
    do {
        input_symbol = fgetc(stdin);
        if (input_symbol == '1' || input_symbol == '2' || input_symbol == '3' || input_symbol == '4' ||
            input_symbol == '5' || input_symbol == '6' || input_symbol == '7' || input_symbol == '8' ||
            input_symbol == '9' || input_symbol == ' ' || input_symbol == '\n') {
            input[i++] = (char) input_symbol;
            continue;
        } else {
            static char empty[1];
            printf("Incorrect input!");
            return empty;
        }
    } while ((char) input_symbol != '\n');
    input[i - 1] = '\0';
    return input;
}

char* convert_to_rome(const char *digits) {
    static char output[5000];
    int index = 0;
    int index_of_input = 0;
    while (digits[index_of_input] != '\0') {
        char symbol = digits[index_of_input];
        if (symbol == '1') {
            output[index++] = 'I';
        } else if (symbol == '2') {
            output[index++] = 'I';
            output[index++] = 'I';
        } else if (symbol == '3') {
            output[index++] = 'I';
            output[index++] = 'I';
            output[index++] = 'I';
        } else if (symbol == '4') {
            output[index++] = 'I';
            output[index++] = 'V';
        } else if (symbol == '5') {
            output[index++] = 'V';
        } else if (symbol == '6') {
            output[index++] = 'V';
            output[index++] = 'I';
        } else if (symbol == '7') {
            output[index++] = 'V';
            output[index++] = 'I';
            output[index++] = 'I';
        } else if (symbol == '8') {
            output[index++] = 'V';
            output[index++] = 'I';
            output[index++] = 'I';
            output[index++] = 'I';
        } else if (symbol == '9') {
            output[index++] = 'I';
            output[index++] = 'X';
        }
        index_of_input++;
        if (symbol != ' ') {
            output[index++] = ' ';
        }
    }
    return output;
}

int main() {
    char *digits;
    digits = input_numbers();
    char* rome_digits = convert_to_rome(digits);
    printf("%s %s", rome_digits, "\n");
    return 0;
}
