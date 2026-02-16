%{
#include <stdio.h>
%}

%%
int|float|char|double|if|else|for|while|return|void { printf("%s is a keyword.\n", yytext); }
[,;{}()] {printf("Seperator : %s\n",yytext);}
[=+\-*/%] { printf("Operator : %s\n",yytext);}
[0-9]+ { printf("%s is a constant.\n", yytext); }
[_a-zA-Z][_a-zA-Z0-9]* {printf("Identifier : %s\n",yytext);}

%%

int main() {
    printf("MOHD HASNAIN KHAN | ML2 | 56\n");
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}