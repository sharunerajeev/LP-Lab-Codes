/* 
Code by
20219078
Sharun E Rajeev
CSB
*/

#include <stdio.h>
#include <string.h>
#include <ctype.h>

void checkDFA(char s[] ) {
	int state = 0;  // 2 states needed
	for(int i = 0; i < strlen(s); i++)
	{
		if(state==0) {
			if(isalpha(s[i]))
				state=1;
			else
				break;
		}
		if(state==1) {
			if(isalnum(s[i]))
				state=1;
			else
				break;
		}
	}
	if(state == 1) {
		printf("Given string is Accepted\n"); 
	}
	else {
		printf("Given string is Not Accepted\n"); 
	}
}

int main() {
	char s[40];
	printf("Implementation of DFA which has identifier:\n Enter a string:");
	scanf("%s",s);
	checkDFA(s);
	return 0;
}
