%{
#include <stdio.h>
%}

%%
[A-Z]+    { printf("Capital Word: %s\n", yytext); }
.|\n      ;
%%

int main()
{
    printf("Enter a sentence:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}