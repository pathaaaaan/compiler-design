%{
#include <stdio.h>
%}

%%

0[xX][0-9a-fA-F]+    { printf("Hexadecimal number: %s\n", yytext); }

.|\n                 ;

%%

int main() {
    printf("Enter a string:\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}