%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[0-9]+[ ]*[+][ ]*[0-9]+ {
    int a,b;
    sscanf(yytext,"%d + %d",&a,&b);
    printf("Result = %d\n",a+b);
}

[0-9]+[ ]*[-][ ]*[0-9]+ {
    int a,b;
    sscanf(yytext,"%d - %d",&a,&b);
    printf("Result = %d\n",a-b);
}

[0-9]+[ ]*[*][ ]*[0-9]+ {
    int a,b;
    sscanf(yytext,"%d * %d",&a,&b);
    printf("Result = %d\n",a*b);
}

[0-9]+[ ]*[/][ ]*[0-9]+ {
    int a,b;
    sscanf(yytext,"%d / %d",&a,&b);
    if(b!=0)
        printf("Result = %d\n",a/b);
    else
        printf("Cannot divide by zero\n");
}

.* {
    printf("Invalid expression\n");
}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter expression: ");
    yylex();
    return 0;
}