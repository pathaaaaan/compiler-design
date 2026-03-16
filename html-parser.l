%{
#include <stdio.h>
%}
%%
"<"[^>]*">" {fputs(yytext, yyout);}
.
%%
int main(int arg, char *args[]){
    yyin = fopen(args[1], "r");
    yyout = fopen(args[2], "w");
    yylex();
    fclose(yyin);
    fclose(yyout);
    return 0;
}

int yywrap(){
    return 1;
}