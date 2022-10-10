/*
Code by 
20219078
Sharun E Rajeev
CSB
*/

%{
#include<stdio.h>
#include<stdlib.h>
%}

%token NUM ID
%left '+' '-'
%left '*' '/'
%%
e: e'+'e
 | e'-'e
 | e'*'e
 | e'/'e
 | '('e')'
 | NUM
 | ID
 ;
%%	

int yyerror()
{
 printf("Valid Expression\n");
 exit(0);
}

main()
{
 printf("Enter the mathematical expression:");
 yyparse();
 printf("InValid Expression\n");
 return 0;
}

