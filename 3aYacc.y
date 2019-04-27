%{
/* 3a.y yacc program to check the validity of an arithemetic expression */
#include<stdio.h>
#include<stdlib.h>
int yyerror();
%}
%token NUM ID
%left '+' '-'
%left '*' '/'
%%
e:e'+'e | e'-'e | e'*'e | e'/'e | '('e')' | NUM | ID ;
%%
int main()
{
	printf("Enter an expression\n");
	yyparse();
	printf("Valid Expression\n");
	return 0;
}
int yyerror()
{
	printf("Invalid Expression..!!!!\n");
	exit(0);
	return 0;
}
