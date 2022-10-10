/*Shruti Priya
20219082
CS'B'*/


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

//Enter the mathematical expression:a+b
//Valid Expression
//Enter the mathematical expression:a++
//InValid Expression

