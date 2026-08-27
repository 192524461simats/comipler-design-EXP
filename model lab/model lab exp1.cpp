#include <stdio.h>
#include <ctype.h>
#include <string.h>

int main()
{
    char id[50];
    int i, valid = 1;

    printf("Enter an identifier: ");
    scanf("%s", id);

    /* First character must be a letter or underscore */
    if (!(isalpha(id[0]) || id[0] == '_'))
        valid = 0;

    /* Remaining characters can be letters, digits or underscore */
    for (i = 1; id[i] != '\0'; i++)
    {
        if (!(isalnum(id[i]) || id[i] == '_'))
        {
            valid = 0;
            break;
        }
    }

    if (valid)
        printf("%s is a Valid Identifier", id);
    else
        printf("%s is an Invalid Identifier", id);

    return 0;
}