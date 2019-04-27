/* lex program */
%{
#include<math.h>
#include<stdlib.h>
#include"y.tab.h"
%}
%%
[a] return A;
[b] return B;
.|\n	return yytext[0];
%%
