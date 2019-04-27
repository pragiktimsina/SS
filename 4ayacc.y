/* yacc  program */
%{
#include<stdio.h>
#include<stdlib.h>
int yyerror();
%}
%token NUM
%left '+' '-'
%left '*' '/'
%%
expr:e	{printf("valid expression \n");
	printf("result %d\n",$$);exit(0);}
e:e'+'e	{$$=$1+$3;} |
e'-'e	{$$=$1-$3;} |
e'*'e	{$$=$1*$3;} |
e'/'e	{if($3==0) yyerror("divide by zero error\n"); 
else	$$=$1/$3;} |
'('e')'	{$$=$2;} |
NUM	{$$=$1;} ;
%%
int main()
{
	printf("Enter arithmetic expression:\n");
	yyparse();
}
int yyerror()
{
	printf("invalid expression\n");	
	exit(0);
	return 0;
}
