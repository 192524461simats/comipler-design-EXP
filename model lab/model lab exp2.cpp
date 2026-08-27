#include <stdio.h>
#include <string.h>

int main()
{
    char line[200];

    printf("Enter C program lines (type END to stop):\n");

    while (1)
    {
        fgets(line, sizeof(line), stdin);

        if (strncmp(line, "END", 3) == 0)
            break;

        if (line[0] == '#')
            printf("Preprocessor Directive: %s", line);
    }

    return 0;
}