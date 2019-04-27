%{
/* lex program */
#include"y.tab.h"
#include<stdlib.h>
int yyerror();
%}
%%
[0-9]+	{return NUM;}
[a-zA-Z][a-zA-Z0-9]*	{return ID;}
[\t]	;
\n	return 0;
. return yytext[0];
%%
