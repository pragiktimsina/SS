%{
#include<stdio.h>
int a[]={0,0,0,0},i,valid=1,opnd=0;
%}
%x OPER
%%
[a-zA-Z0-9]+	{BEGIN OPER; opnd++;}
<OPER>"+"       { if(valid) {valid=0; i=0;} else ext();}
<OPER>"-"       { if(valid) {valid=0; i=1;} else ext();}
<OPER>"*"       { if(valid) {valid=0; i=2;} else ext();}
<OPER>"/"	{ if(valid) {valid=0; i=3;} else ext();}
<OPER>[a-zA-Z0-9]+       {opnd++; if(valid==0) {valid=1;a[i]++;} else ext();}
<OPER>"\n"	{if(valid==0) ext(); else return 0;}
<OPER>,		valid=0;
,\n	ext();
%%
int ext()
{
	printf("Invalid Expression\n");
	return 0;
	exit(0);
}
int main()
{
	printf("Type the arithmetic expression\n");
	yylex();
	printf("Valid arithmetic expression\n");
	printf("No of operands/identifiers: %d\n",opnd);
	printf("no of addition:%d\n no of substractions:%d\n",a[0],a[1]);
	printf("No of multiplication:%d\n No of Division:%d\n",a[2],a[3]);
	return 0;
}
