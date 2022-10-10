/*Shruti Priya
20219082
CS'B'*/
%{
#include "y.tab.h"
%}

%%
[if] {return IF;}
[sS][0-9]* {return S;}
[\n] ;
[.]  {return yytext[0];}
%%

int yywrap() {}
