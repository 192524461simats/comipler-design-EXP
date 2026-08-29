%{
#include <stdio.h>
%}

%%
[0-9]+(\.[0-9]+)?    { printf("Constant: %s\n", yytext); }
.|\n                 ;
%%

int main()
{
    yyin = fopen("sample.c", "r");
    yylex();
    fclose(yyin);
    return 0;
}

int yywrap()
{
    return 1;
}