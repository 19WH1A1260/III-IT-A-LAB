%{
#include<stdio.h>
int l=0,s=0,t=0,ch=0;
%}

%%
\n {l++;}
([ ])+ {s++;}
\t {t++;}
. {ch++;}

%%

int yywrap(void){}

int main() {
printf("enter a sentence..press ^d at end\n");
yylex();
printf("\nNo of lines = %d",l);
printf("\nNo of spaces = %d",s);
printf("\nNo of tabs = %d",t);
printf("\nNo of other characters = %d",ch);

}

