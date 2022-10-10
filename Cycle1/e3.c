/* 
Code by 
20219078
Sharun E Rajeev
CSB
*/

#include <stdio.h>
#include <string.h>
void checkDFA(char s[] ) {
   int state = 0;  // 5 states needed
   for(int i = 0; i < strlen(s); i++)
   {
      if(state==0)
      {
        if(s[i]=='0')
         state=1;
        else
         break;
      }
      else if(state==1)
      {
        if(s[i]=='0')
         state=2;
        else
         break;
      }
      else if(state==2)
      {
        if(s[i]=='0')
         state=2;
        else if(s[i]=='1')
         state=3;
        else
         break;
      }
      else if(state==3)
      {
        if(s[i]=='0')
         state=2;
        else if(s[i]=='1')
         state=4;
        else
         break;
      }
      else
      { if(s[i]=='0')
         state=2;
        else if(s[i]=='1')
         state=4;
        else
         break; }
   }
   if(state == 4) 
   { printf("Given string is Accepted\n"); }
   else
   { printf("Given string is Not Accepted\n"); }
}

int main() {
   char s[40];
   printf("Implementation of DFA which starts with '00' and ends with '11':\n Enter a string:");
   scanf("%s",s);
   checkDFA(s);
   return 0;
}

/*

OUTPUT

exam@dslab-Veriton-Series:~/Desktop/20219078_SharunERajeev/Cycle1$ ./a.out 
Implementation of DFA which starts with '00' and ends with '11':
 Enter a string:001011
Given string is Accepted

exam@dslab-Veriton-Series:~/Desktop/20219078_SharunERajeev/Cycle1$ ./a.out 
Implementation of DFA which starts with '00' and ends with '11':
 Enter a string:01001101
Given string is Not Accepted
*/
