%{
/*PROGRAM TO COUNT THE NUMBER OF WORDS,CHARACTERS,BLANKS AND LINES IN INPUT FILE*/
#include<stdio.h>
int charcount=0;
int wordcount=0;
int linecount=0;
int blankcount=0;
%}

word [^ \t\n]+
eol [\n]
%%
{word}	{wordcount++;charcount+=yyleng;}
{eol}	{linecount++;}
[ ]	{blankcount++;charcount++;}
[\t]	{blankcount+=6;charcount+=6;}
%%
int main(int argc,char **argv)
{
	if(argc>1)
	{
		FILE *file;
		file=fopen(argv[1],"r");
		if(!file)
		{
			printf("Could not open file %s\n",argv[1]);
			exit(1);
		}
		yyin=file;
		yylex();
		printf("The number of characters:%d\n",charcount);
		printf("The number of word count:%d\n",wordcount);
		printf("The number of blank count:%d\n",blankcount);
		printf("The number of line count:%d\n",linecount);
	}
	else
	{
		printf("Enter the filename along with the program\n");
	}
	return 0;
}
		
 
