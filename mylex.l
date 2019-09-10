%%
"if"	{ printf("<Keyword, %s>\n", yytext); }
"while"	{ printf("<Keyword, %s>\n", yytext); }
"else"	{ printf("<Keyword, %s>\n", yytext); }
"int"	{ printf("<Keyword, %s>\n", yytext); }
"float"	{ printf("<Keyword, %s>\n", yytext); }
"char"	{ printf("<Keyword, %s>\n", yytext); }
"string" { printf("<Keyword, %s>\n", yytext); }
"return" { printf("<Keyword, %s>\n", yytext); }

"+"	 { printf("<Operator, %s>\n", yytext); }   
"*"	 { printf("<Operator, %s>\n", yytext); } 
"-"	 { printf("<Operator, %s>\n", yytext); }
"/"	 { printf("<Operator, %s>\n", yytext); }
"&"	 { printf("<Operator, %s>\n", yytext); }
"|"	 { printf("<Operator, %s>\n", yytext); }
"!"	 { printf("<Operator, %s>\n", yytext); }
"="	 { printf("<Operator, %s>\n", yytext); }

"<"	 { printf("<Rel_Operator, %s>\n", yytext); } 
">"	 { printf("<Rel_Operator, %s>\n", yytext); } 
"<="	 { printf("<Rel_Operator, %s>\n", yytext); }  
">="	 { printf("<Rel_Operator, %s>\n", yytext); } 
"=="	 { printf("<Rel_Operator, %s>\n", yytext); } 

";"	 { printf("<Special_char, %s>\n", yytext); }
","	 { printf("<Special_char, %s>\n", yytext); }
"["	 { printf("<Special_char, %s>\n", yytext); }
"]"	 { printf("<Special_char, %s>\n", yytext); }
"{"	{ printf("<Special_char, %s>\n", yytext); }
"}"	{ printf("<Special_char, %s>\n", yytext); }

[a-zA-Z][a-zA-Z0-9]* {printf("<ID,  %s>\n", yytext); }
 

[+-][0-4]?[0-9]?[0-9]?[0-9]? { printf("<Signed_int, %s>\n", yytext); }  

[1-9][0-9]?[0-9]?[0-9]?  { printf("<UnSigned_int, %s>\n", yytext); }
[+|-]?[0-9]?[0-9]?[0-9]?[0-9]?[0-9]? { printf("<int, %s>\n", yytext); } 
 
[-|+]?[0-9]+([eE][-|+]?[0-9]+) { printf("<float, %s>\n", yytext); }


0[x][0-9A-F]|0[x][0-9A-F][0-9A-F]|0[x][0-9A-F][0-9A-F][0-9A-F]|0[x][0-9A-F][0-9A-F][0-9A-F][0-9A-F] { printf("<Hex, %s>\n", yytext); }

0[x][0-9A-F]+|[+-]?[0-9]+ { printf("<Overflow, %s>\n", yytext); } 

 
[$]([a-zA-Z]|[0-9])[$] { printf("<Char, %s>\n", yytext); } 
[$][0-9a-zA-Z]+[$] { printf("<String, %s>\n", yytext); } 

[ \t] { printf("<white_space, %s>\n", yytext); }
. { printf("Mystery character %s\n", yytext); }
%%
