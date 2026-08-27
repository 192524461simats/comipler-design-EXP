#include <stdio.h>
#include <string.h>

char input[100];
int pos = 0;
int error = 0;

void T()
{
    if (input[pos] == 'i' && input[pos + 1] == 'd')
        pos = pos + 2;
    else
        error = 1;
}

void Eprime()
{
    if (input[pos] == '+')
    {
        pos++;
        T();

        if (!error)
            Eprime();
    }
}

void E()
{
    T();

    if (!error)
        Eprime();
}

int main()
{
    printf("Enter input: ");
    scanf("%s", input);

    E();

    if (!error && input[pos] == '\0')
        printf("Accepted");
    else
        printf("Rejected");

    return 0;
}