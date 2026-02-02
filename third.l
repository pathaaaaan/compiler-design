%{
    #include <stdio.h>
%}

%%
^[a-zA-Z_][_a-zA-Z0-9]*$   { printf("Valid Identifier"); }
.*   			{printf("not valid");}
%%

int main() {
    printf("Enter data:\n");
    yylex();

    return 0;
}

int yywrap() {
    return 1;
}
