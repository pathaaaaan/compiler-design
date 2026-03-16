%{
#include <stdio.h>
%}

%%

([0-9]{1,3}\.){3}[0-9]{1,3}   { printf("IP Address: %s\n", yytext); }

.|\n                          ;

%%

int main()
{
    FILE *fp = fopen("input.txt","r");
    if(fp == NULL)
    {
        printf("File not found\n");
        return 0;
    }

    yyin = fp;
    yylex();
    fclose(fp);
    return 0;
}

int yywrap()
{
    return 1;
}