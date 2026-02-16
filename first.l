%{
#include <stdio.h>
int count = 0;
%}

%%
\n    { count++; }   // count lines
.     { }            // ignore everything else
%%

int main() {
    printf("MOHD HASNAIN KHAN | ML2 | 56\n");
    yylex();

    printf("%d\n", count);
    return 0;
}
int yywrap()
{
    return 1;
}
