%{
/*TO COUNT NUMBER OF COMMENT LINES IN A GIVEN C PROGRAM AND ELIMINATE THEM AND COPY*/
#include<stdio.h>
int cc=0;
%}
%x CMNT
%%
"/*"		{BEGIN CMNT;cc++;}
<CMNT>.		;
<CMNT>\n	;
<CMNT>"*/"	{BEGIN 0;}
%%

int main(int argc, char *argv[])
{
	if(argc!=3)
	{
		printf("Usage: %s <src> <dest> \n",argv[0]);
		return 0;
	}
	yyin=fopen(argv[1],"r");
	yyout=fopen(argv[2],"w");
	yylex();
	printf("No of comment lines %d\n",cc);
	return 0;
}
