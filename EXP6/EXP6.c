#include <stdio.h>
#include <ctype.h>
#include <string.h>

int main()
{
    char id[50];
    int i, valid = 1;

    printf("Enter identifier: ");
    scanf("%s", id);

    if (!isalpha(id[0]) && id[0] != '_')
        valid = 0;

    for (i = 1; id[i] != '\0'; i++)
    {
        if (!isalnum(id[i]) && id[i] != '_')
        {
            valid = 0;
            break;
        }
    }

    if (valid)