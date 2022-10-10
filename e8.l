/*
Code by 
20219078
Sharun E Rajeev
CSB
*/

%{
int vc=0;
int cc=0;
%}

%%
[aeiuoAEIOU] {vc++;}
[a-zA-Z] {cc++;}
%%

int yywrap() {}
int main() {
    printf("Enter the string with vowels and consonants\n");
    yylex();
    printf("Number of vowels : %d\n", vc);
    printf("Number of consonants : %d\n", cc);
    return 0;
}
