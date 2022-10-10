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
[aA] {return A;}
[bB] {return B;}
[\n] {return NL;}
[.]  {return yytext[0];}
%%

int yywrap()
{
 return 1;
}

/* 
OUTPUT

Enter the string: aabb
Valid String 

Enter the string: abab
Invalid String 

Enter the string: aaab
Invalid String 
*/
