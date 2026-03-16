%{
#include<stdio.h>
#include<stdlib.h>

int isArmstrong(int n)
{
    int temp, r, sum = 0;
    temp = n;

    while(temp > 0)
    {
        r = temp % 10;
        sum += r*r*r;
        temp = temp / 10;
    }

    return (sum == n);
}
%}

%%

[0-9]+ {
        int num = atoi(yytext);
        if(isArmstrong(num))
            printf("%d is Armstrong\n", num);
      }

[ \t\n]+   ;   /* ignore whitespace */

.          ;   /* ignore other characters */

%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}