#include <stdio.h>

int main()
{
    char ch;
    int spaces = 0, newlines = 0;

    printf("Enter text (press # to finish):\n");

    while ((ch = getchar()) != '#')
    {
        if (ch == ' ' || ch == '\t')
            spaces++;

        if (ch == '\n')
            newlines++;
    }

    printf("\nWhitespaces = %d", spaces);
    printf("\nNewline characters = %d", newlines);

    return 0;
}