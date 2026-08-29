%{
#include <stdio.h>
#include <string.h>

int max = 0;
char longest[50];
%}

%%
[a-zA-Z]+ {
    if(strlen(yytext) > max) {
        max = strlen(yytext);
        strcpy(longest, yytext);
    }
}
[ \t\n]+ ;
. ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a sentence: ");
    yylex();

    printf("Longest word: %s\n", longest);
    printf("Length of longest word: %d\n", max);
    return 0;
}