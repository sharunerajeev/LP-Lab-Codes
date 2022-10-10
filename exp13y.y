/*Shruti Priya
20219082
CS'B'*/


%{
#include<stdio.h>
#include<stdlib.h>
FILE* yyin;
int count=0;
%}

%token IF S
%%
stmt: "if_stmt" {printf("Number of IF statements is: %d\n",count);
                 exit(0); }
;
if_stmt: IF'('cond')' if_stmt {count++;}
       | S;
       ;
%%

int yyerror(char *msg)
{
 printf("No IF statements are present\n");
 exit(0);
}

main()
{
 yyin = fopen("exp06.c", "r");
 printf("Number of IF statements are: %d\n", count);
 yyparse():
}

//Number of IF statements are: 1
