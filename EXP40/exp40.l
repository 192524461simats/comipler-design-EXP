%{
#include <stdio.h>
%}

%%
"int"|"float"|"char"|"if"|"else"|"for"|"while"|"return" { printf("KEYWORD    : %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("IDENTIFIER : %s\n", yytext); }
[0-9]+ { printf("NUMBER     : %s\n", yytext); }
"=="|"!="|"<="|">="|"+"|"-"|"*"|"/"|"="|"<"|">" { printf("OPERATOR   : %s\n", yytext); }
"("|")"|"{"|"}"|";"|"," { printf("SPECIAL    : %s\n", yytext); }
[ \t\n]+ ;
. { printf("UNKNOWN    : %s\n", yytext); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("TOKENS:\n");
    yylex();
    return 0;
}