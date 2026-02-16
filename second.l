%{
    #include <stdio.h>
    int tabs = 0, spaces = 0, lines = 0, words = 0, others = 0;
%}

%%
[a-zA-Z]+   { words++; }
\n          { lines++; }
[ ]         { spaces++; }
\t          { tabs++; }
.           { others++; }
%%

int main() {
    printf("MOHD HASNAIN KHAN | ML2 | 56\n");

    printf("Enter data:\n");
    yylex();

    printf("Number of words  : %d\n", words);
    printf("Number of spaces : %d\n", spaces);
    printf("Number of tabs   : %d\n", tabs);
    printf("Number of lines  : %d\n", lines);
    printf("Other characters: %d\n", others);

    return 0;
}

int yywrap() {
    return 1;
}