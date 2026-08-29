%{
#include <stdio.h>
int macros = 0;
int headers = 0;
%}

%%
^#[ \t]*define     { macros++; }
^#[ \t]*include    { headers++; }
.|\n               ;
%%

int main()
{
    yyin = fopen("sample.c", "r");
    yylex();
    fclose(yyin);

    printf("Number of Macros Defined = %d\n", macros);
    printf("Number of Header Files Included = %d\n", headers);

    return 0;
}

int yywrap()
{
    return 1;
}