/* 
Code by 
20219078
Sharun E Rajeev
CSB
*/

#include <stdio.h>
#include <string.h>
void checkDFA(char s[] ) {
   int state = 1;  // 3 states needed
   for(int i = 0; i < strlen(s); i++)
   {
      if(s[i]=='1' && state==1)
          state = 1;
      else if(s[i]=='0' && state==1)
          state = 2;
      else if(s[i]=='1' && state==2)
          state = 1;
      else if(s[i]=='0' && state==2)
          state = 3;
      else
        { printf("Invalid String!");
          break; }
    if(state==3)
      break;
   }
   if(state == 3) 
   { printf("Given string is Accepted\n"); }
   else
   { printf("Given string is Not Accepted\n"); }
}

int main() {
   char s[40];
   printf("Implementation of DFA which having a sub string '00':\n Enter a string:");
   scanf("%s",s);
   checkDFA(s);
   return 0;
}

/*
OUTPUT

exam@dslab-Veriton-Series:~/Desktop/20219078_SharunERajeev/Cycle1$ ./a.out 
Implementation of DFA which having a sub string '00':
 Enter a string:1001
Given string is Accepted

exam@dslab-Veriton-Series:~/Desktop/20219078_SharunERajeev/Cycle1$ ./a.out 
Implementation of DFA which having a sub string '00':
 Enter a string:0101
Given string is Not Accepted
*/
