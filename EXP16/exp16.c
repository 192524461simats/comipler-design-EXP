#include <stdio.h>
#include <string.h>

int main()
{
    int n, i;
    char op[10], a[10], b[10], result[10];

    printf("Enter number of instructions: ");
    scanf("%d", &n);

    printf("Enter three address code:\n");

    for (i = 0; i < n; i++)
    {
        scanf("%s %s %s %s", result, op, a, b);

        printf("\nMOV R0, %s", a);

        if (strcmp(op, "+") == 0)
            printf("\nADD R0, %s", b);

        else if (strcmp(op, "-") == 0)
            printf("\nSUB R0, %s", b);

        else if (strcmp(op, "*") == 0)
            printf("\nMUL R0, %s", b);

        else if (strcmp(op, "/") == 0)
            printf("\nDIV R0, %s", b);

        printf("\nMOV %s, R0\n", result);
    }

    return 0;
}