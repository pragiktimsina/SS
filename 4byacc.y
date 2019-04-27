/*yacc program */
%{
#include<stdio.h>
#include<stdlib.h>
void yyerror();
%}
%token A B
%%
str: RecA RecB '\n'	{printf("valid string\n"); exit(0);} ;
RecA: A RecA | A ;
RecB: B RecB | B;
%%
int main()
{
	printf("Enter the string:\n");
	yyparse();
	return 0;
}
void yyerror()
{
	printf("invalid string\n");
	exit(0);
}
