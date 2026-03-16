%{
#include <stdio.h>

int count[26] = {0};
%}

%%
[a-z]   { count[yytext[0] - 'a']++; }

[A-Z]   { count[yytext[0] - 'A']++; }

.       ;      /* ignore other characters */

\n      {
            printf("\nLetter Frequency:\n");
            for(int i = 0; i < 26; i++){
                if(count[i] != 0)
                    printf("%c = %d\n", i + 'a', count[i]);
            }
        }
%%

int main(){
    printf("Enter a string:\n");
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}