/*
Code by 
20219078
Sharun E Rajeev
CSB
*/

%{
#include "y.tab.c"
%}

%%
[0-9]+(\.[0-9]+)? {return NUM;}
[a-zA-Z][a-zA-Z0-9]* {return ID;}
[\t] ;
[\n] {return 0;}
[.]  {return yytext[0];}
%%

yywrap() {}

/*
OUTPUT

Enter the mathematical expression:a+b
+Valid Expression

Enter the mathematical expression:=ab*
=*InValid Expression
*/
