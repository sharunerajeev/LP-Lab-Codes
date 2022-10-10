/* 
Code by 
20219078
Sharun E Rajeev
CSB
*/

%{
	#include<stdio.h>
    int key=0;
    int statement=0;
    int identifier=0;
    int keyword=0;
    int assignmentOpr=0;
    int relationalOpr=0;
    int integers=0;
    FILE *yyin;
%}

TYPE double|int|break|else|char|return|for|void|do|if|while|const|float|printf|scanf

/* Ignore preprocessor directives and strings */
%%
; {statement++;}
\".*\" {;}
{TYPE} {keyword++;}
= {assignmentOpr++;}
[<|>|<=|>=|==] {relationalOpr++;}
#.* {;}
[0-9]+ {integers++;}
[a-zA-Z_][a-zA-Z0-9_]* {identifier++;}
%%

int yywrap() {
	return 1;
}
int main() {
    yyin=fopen("input.c","r");
    yylex();
    printf("\nNo of statements: %d\n", statement);
    printf("No of identifier: %d\n", identifier);
    printf("No of assignment operator: %d\n", assignmentOpr);
    printf("No of relational operators: %d\n", relationalOpr);
    printf("No of keywords: %d\n", keyword);
    printf("No of integers: %d\n", integers);
    return 0;
}

/* OUTPUT
Input file
exam@dslab-Veriton-Series:~/Desktop/20219078--Sharun E Rajeev$ cat input.c 
#include<stdio.h>
void main()
{
x=10;
if(x>5)
printf("The number is greater than 5");
else
printf("The number is less than 5");
}

exam@dslab-Veriton-Series:~/Desktop/20219078--Sharun E Rajeev$ ./a.out 
No of statements: 3
No of identifier: 3
No of assignment operator: 1
No of relational operators: 1
No of keywords: 5
No of integers: 2

*/

