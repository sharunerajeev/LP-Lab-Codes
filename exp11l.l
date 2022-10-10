/*Shruti Priya
20219082
CS'B'*/


%{
#include "y.tab.h"
%}

%%
[aA] {return A;}
[bB] {return B;}
[\n] {return NL;}
[.]  {return yytext[0];}
%%

int yywrap()
{
 return 1;
}
