#include <stdio.h>
#include <string.h>
#include <ctype.h>

char expr[100];
int temp = 1;

int main()
{
    int i;
    char op;
    char a, b;

    printf("Enter expression: ");
    scanf("%s", expr);

    printf("\nThree Address Code:\n");

    for (i = 0; expr[i] != '\0'; i++)
    {
        if (expr[i] == '*' || expr[i] == '/')
        {
            op = expr[i];
            a = expr[i - 1];
            b = expr[i + 1];

            printf("t%d = %c %c %c\n", temp, a, op, b);

            expr[i - 1] = '0' + temp;
            for (int j = i; expr[j] != '\0'; j++)
                expr[j] = expr[j + 2];

            temp++;
            i = -1;
        }
    }

    for (i = 0; expr[i] != '\0'; i++)
    {
        if (expr[i] == '+' || expr[i] == '-')
        {
            op = expr[i];
            a = expr[i - 1];
            b = expr[i + 1];

            printf("t%d = %c %c %c\n", temp, a, op, b);

            expr[i - 1] = '0' + temp;
            for (int j = i; expr[j] != '\0'; j++)
                expr[j] = expr[j + 2];

            temp++;
            i = -1;
        }
    }

    return 0;
}