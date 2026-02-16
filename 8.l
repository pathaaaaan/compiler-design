%{
#include <stdio.h>
%}

%%
"//".*                          
"/*"([^*]|\*+[^*/])*\*+"/"          
[ \t\n]+            { fputs(yytext, yyout); }
.                   { fputc(yytext[0], yyout); }
%%

int main() {
    yyin = fopen("8.txt", "r");
    yyout = fopen("8-output.txt","w");
    yylex();
    fclose(yyin);
    fclose(yyout);
}


int yywrap()
{
    return 1;
}
