%{
    #include <stdio.h>
    int words = 0, chars = 0, spaces = 0;
%}

%%
[ \t\n] {spaces++;}
[^ \t\n]+ {words++; chars += yyleng;}  
%%

int main(){
    printf("MOHD HASNAIN KHAN | ML2 | 56\n");
    yyin = fopen("sixth.txt", "r");
    yylex();
    printf("Words: %d\n", words);
    printf("Spaces: %d\n", spaces);
    printf("Characters: %d\n", chars);
    fclose(yyin);
    return 0;
}

int yywrap(){
    return 1;
}