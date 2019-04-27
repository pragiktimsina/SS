/*lex program */
%{
#include"y.tab.h"
%}
%%
[0-9]	{return DIGIT;}
[a-z]	{return LETTER;}
.	{return yytext[0];}
[\n]	{return '\n';}
%%
