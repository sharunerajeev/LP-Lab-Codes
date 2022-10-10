/*
Code by 
20219078
Sharun E Rajeev
CSB
*/

%{
    #include<stdio.h>
%}

%%
[{] fprintf(yyout,"%s","begin");
[}] fprintf(yyout,"%s","end");
. fprintf(yyout,"%s", yytext);
%%

int yywrap() { return 1;}
int main() {
	extern FILE *yyin, *yyout;
    yyin=fopen("input.c", "r");
    yyout=fopen("output.c", "w");
    yylex();
    return 0;
}

/*
OUTPUT

input file
exam@dslab-Veriton-Series:~/Desktop/20219078--SharunERajeev$ cat input.c 
#include<stdio.h>
void main()
{
	printf("Hello World");
}

output file
exam@dslab-Veriton-Series:~/Desktop/20219078--SharunERajeev$ cat output.c 
#include<stdio.h>
void main()
begin
	printf("Hello World");
end

*/
