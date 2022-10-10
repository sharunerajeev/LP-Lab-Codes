/*Shruti Priya
20219082
CS'B'*/
%{
#include "y.tab.h"
%}

%%
[0-9]+(\.[0-9]+)? {return NUM;}
[a-zA-Z][a-zA-Z0-9]* {return ID;}
[\t] ;
[\n] {return 0;}
[.]  {return yytext[0];}
%%

yywrap() {}
