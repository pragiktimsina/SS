/*yacc program */
%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}
%token LETTER DIGIT
%%
stmt:var '\n'	{printf("The entered identifier is valid\n"); exit(0);} 
|
var:var LETTER
|var DIGIT
|
;
%%
int main()
{
	printf("Enter an identifier\n");
	yyparse();
	return 0;
}
int yyerror()
{
	printf("Invalid identifier\n");
	exit(0);
}
