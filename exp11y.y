/*Shruti Priya
20219082
CS'B'*/


%{
#include<stdio.h>
#include<stdlib.h>
%}

%token A B NL
%%
stmt: S NL {printf("Valid String \n");
            exit(0); }
;
S: A S B |
;
%%

int yyerror(char *msg)
{
 printf("Invalid String \n");
 exit(0);
}
main()
{
 printf("Enter the string: ");
 yyparse();
}

//Enter the string: aaabbb
//Valid String
//Enter the string: aabbb
//Invalid String 

