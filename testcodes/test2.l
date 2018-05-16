%%
[ \t\n ]	;
[(){};=>]	|
"if"	|
"int"	|
[a-zA-Z_][a-zA-Z0-9_]* |
"#include"	|
"<stdio.h>"	|
"\"hello, world\n\""		|
[0-9]+		printf("%s\n", yytext);
.		printf("It Unknown token[%s]", yytext);
