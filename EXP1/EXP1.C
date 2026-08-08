#include <stdio.h>
#include <ctype.h>
#include <string.h>

int main() {
    char str[200], token[50];
    int i = 0, j;

    printf("Enter the statement:\n");
    fgets(str, sizeof(str), stdin);

    while (str[i] != '\0') {

        // Ignore spaces, tabs and new lines
        if (isspace(str[i])) {
            i++;
            continue;
        }

        // Ignore comments
        if (str[i] == '/' && str[i + 1] == '/') {
            break;
        }

        // Identifier
        if (isalpha(str[i]) || str[i] == '_') {
            j = 0;
            while (isalnum(str[i]) || str[i] == '_')
                token[j++] = str[i++];
            token[j] = '\0';
            printf("Identifier: %s\n", token);
        }

        // Constant
        else if (isdigit(str[i])) {
            j = 0;
            while (isdigit(str[i]))
                token[j++] = str[i++];
            token[j] = '\0';
            printf("Constant: %s\n", token);
        }

        // Operator
        else if (strchr("+-*/%=<>", str[i])) {
            printf("Operator: %c\n", str[i]);
            i++;
        }

        else {
            i++;
        }
    }

    return 0;
}
