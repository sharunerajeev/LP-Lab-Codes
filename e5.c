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
		if(state==0) {
			if(s[i]=='0')
				state=1;
			else
				break;
		}
		else if(state==1) {
			if(s[i]=='0')
				state=2;
			else
				break;
		}
		else if(state==2) {
			if(s[i]=='0')
				state=2;
			else if(s[i]=='1')
				state=3;
			else
				break;
		}
		else if(state==3) {
			if(s[i]=='0')
				state=2;
			else if(s[i]=='1')
				state=4;
			else
				break;
		}
		else { 
			if(s[i]=='0')
				state=2;
			else if(s[i]=='1')
				state=4;
			else
				break; 
		}
	}
	if(state == 4) { 
		printf("Given string (%s) is Accepted\n", s); 
	}
	else { 
		printf("Given string (%s) is Not Accepted\n", s); 
	}
}

int main() {
	char s[42];
 	printf("Implementation of DFA which having a sub string starting with '00' and ending with '11':\n Enter a binary string (Max 40 characters):");
	scanf("%s",s);
	checkDFA(s);
	return 0;
}
