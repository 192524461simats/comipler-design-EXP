%{
#include <stdio.h>
int lines = 0, words = 0, chars = 0;
%}
%%
"//".*                         ;                       
"/*"([^*]|\*+[^*/])*\*+"/"     ;                       
[ \t]+                         ;                      
\n                             { lines++; }
[A-Za-z_][A-Za-z0-9_]*         { words++; chars += yyleng; }
[0-9]+                         { words++; chars += yyleng; }
\"([^\\\n]|(\\.))*\"           { words++; chars += yyleng; }
.                              { chars++; }

%%
int yywrap()
{
    return 1;
}
int main()
{
    FILE *fp;
    fp = fopen("sample.c", "r");
    if (fp == NULL)
    {
        printf("Cannot open file\n");
        return 1;
    }
    yyin = fp;
    yylex();
    fclose(fp);
    printf("\nNumber of Lines      : %d\n", lines);
    printf("Number of Words      : %d\n", words);
    printf("Number of Characters : %d\n", chars);
    return 0;
}