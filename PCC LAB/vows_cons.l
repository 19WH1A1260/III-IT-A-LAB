%{
#include<stdio.h>
int v=0;
int c=0;
%}
%% 
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
%% 
int yywrap(void){}
int main()
{
printf("Enter the string: at end press ^d\n");

yylex();
printf("no. of vowels = %d\nno. of consonants = %d\n", v, c);
return 0;
}
