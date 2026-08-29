%{
#include <stdio.h>
int line = 1;
%}

%%
\n          { line++; printf("\n%d ", line); }
.           { printf("%s", yytext); }
%%

int main()
{
    yyin = fopen("sample.c", "r");

    if (yyin == NULL)
    {
        printf("File not found\n");
        return 1;
    }

    printf("%d ", line);
    yylex();

    fclose(yyin);
    return 0;
}

int yywrap()
{
    return 1;
}