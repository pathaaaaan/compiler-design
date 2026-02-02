%{
#include <stdio.h>
int count = 0;
%}

%%
\n    { count++; }   // count lines
.     { }            // ignore everything else
%%

int main() {
    yylex();
    printf("%d\n", count);
    return 0;
}