%{
#include "parser.tab.h"
#include <string.h>
%}

%%

[a-zA-Z_][a-zA-Z0-9_]*     { yylval.str = strdup(yytext); return IDENTIFIER; }
[0-9]+                     { yylval.str = strdup(yytext); return NUMBER; }
"="                        { return ASSIGN; }
"*"                        { return MUL; }
"+"                        { return ADD; }
"-"                        { return SUB; }
"("                        { return LPAREN; }
")"                        { return RPAREN; }
";"                        { return SEMICOLON; }
[ \t\r\n]+                 { /* Skip whitespace */ }
.                          { printf("Unexpected character: %s\n", yytext); return yytext[0]; }

%%

int yywrap(void) {
    return 1;
}
