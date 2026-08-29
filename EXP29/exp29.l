%{
#include <stdio.h>
%}

%%
"#include"                   { printf("PREPROCESSOR: %s\n", yytext); }
"int"|"void"|"main"          { printf("KEYWORD: %s\n", yytext); }
"printf"                     { printf("FUNCTION: %s\n", yytext); }
[0-9]+                       { printf("CONSTANT: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*       { printf("IDENTIFIER: %s\n", yytext); }
\"([^"])*\"                  { printf("STRING: %s\n", yytext); }
"=="|"!="|"<="|">="|"="     { printf("OPERATOR: %s\n", yytext); }
[+\-*/]                      { printf("OPERATOR: %s\n", yytext); }
[{}();,<>]                   { printf("SPECIAL SYMBOL: %s\n", yytext); }
[ \t\n]+                     ;
.                            { printf("SPECIAL SYMBOL: %s\n", yytext); }
%%

int main()
{
    yyin = fopen("sample.c", "r");

    if (yyin == NULL)
    {
        printf("File not found\n");
        return 1;
    }

    yylex();
    fclose(yyin);
    return 0;
}

int yywrap()
{
    return 1;
}