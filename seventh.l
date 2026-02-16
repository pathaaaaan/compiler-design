%{
    #include <stdio.h>
%}

%%
[ \t]+ {fputc(' ', yyout);}
\n {fputc('\n',yyout);}
[^ \t\n]+ {fputs(yytext,yyout);}  
%%

int main(){
    printf("MOHD HASNAIN KHAN | ML2 | 56\n");
    yyin = fopen("sixth.txt", "r");
    yyout = fopen("seventh.txt","w");
    yylex();
    fclose(yyin);
    fclose(yyout);
    return 0;
}

int yywrap(){
    return 1;
}