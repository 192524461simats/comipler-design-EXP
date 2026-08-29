%{
#include <stdio.h>
int consonants = 0;
%}

%%
[A-Za-z] {
    if (yytext[0] != 'a' && yytext[0] != 'e' && yytext[0] != 'i' &&
        yytext[0] != 'o' && yytext[0] != 'u' &&
        yytext[0] != 'A' && yytext[0] != 'E' && yytext[0] != 'I' &&
        yytext[0] != 'O' && yytext[0] != 'U')
        consonants++;
}
.|\n ;
%%

int main()
{
    printf("Enter a sentence: ");
    yylex();
    printf("Number of consonants = %d\n", consonants);
    return 0;
}

int yywrap()
{
    return 1;
}