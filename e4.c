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
		else {
			printf("Invalid String!\n");
			break; 
		}
		if(state==3) // Final state
			break;
	}
	if(state == 3) { 
		printf("Given string is Accepted\n"); 
	}
	else { 
		printf("Given string is Not Accepted\n"); 
	}
}

int main() {
	char s[42];
	printf("Implementation of DFA which having a sub string '00':\n Enter a binary string(Max 40 characters):");
	scanf("%s",s);
	checkDFA(s);
	return 0;
}
