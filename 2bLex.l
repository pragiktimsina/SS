%{
#include<stdio.h>
int f=0;
%}
ws [ \n\t]+
%%
{ws}[aA][nN][Dd]{ws}|{ws}[Oo][Rr]{ws}|{ws}[Bb][Uu][Tt]{ws} f=1;
{ws}[Bb][Ee][Cc][Aa][Uu][Ss][Ee]{ws} f=1;
{ws}[Nn][Ee][Vv][Ee][Rr][Tt][Hh][Ee][Ll][Ee][Ss]{ws} f=1;
. ;
\n return 0;
%%
int main()
{
	printf("Enter a sentence to end press ctrl+d\n");
	yylex();
	if(f==1)
	{
		printf("COMPOUND SENTENCE\n");
	}
	else
	{
		printf("SIMPLE SENTENCE\n");
	}
	return 0;
}


