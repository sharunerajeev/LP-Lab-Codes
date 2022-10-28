/*
Code by 
20219078
Sharun E Rajeev
CSB
*/


%{
/* Definition section */
#include<stdio.h>
#include<stdlib.h>
int yylex(void);     
void yyerror(char *);
%}

%token A B NL

/* Rule Section */
%%
stmt: S NL {printf("Valid string\n");
			exit(0);}
;
S: A S | A E
;
E: A B | A E B 
;
%%

void yyerror(char *s) 
{     
	printf("%s\n", s); 
}

// Driver code
int main()
{
	printf("Enter the string\n");
	yyparse();
	return 0;
}

