
%{
#include "tokens.h"

static int line_count = 1;
%}

white [ \t]+
digit [0-9]
integer {digit}+
letter [a-zA-Z]

char_esp [,;:\(\)\[\]\{\}+-|*/<>=!&%#ˆ.$]

linebreak \n
inlinecomment \/\/.*
separator {white}|{linebreak}

id {letter}({letter}|{digit}|_)*

%%

"int" { return TK_PR_INT; }
"float" { return TK_PR_FLOAT; }
"bool" { return TK_PR_BOOL; }
"char" { return TK_PR_CHAR; }
"string" { return TK_PR_STRING; }
"if" { return TK_PR_IF; }
"then" { return TK_PR_THEN; }
"else" { return TK_PR_ELSE; }
"while" { return TK_PR_WHILE; }
"do" { return TK_PR_DO; }
"input" { return TK_PR_INPUT; }
"output" { return TK_PR_OUTPUT; }
"return" { return TK_PR_RETURN; }
"const" { return TK_PR_CONST; }
"static" { return TK_PR_STATIC; }
"foreach" { return TK_PR_FOREACH; }
"for" { return TK_PR_FOR; }
"switch" { return TK_PR_SWITCH; }
"case" { return TK_PR_CASE; }
"break" { return TK_PR_BREAK; }
"continue" { return TK_PR_CONTINUE; }
"class" { return TK_PR_CLASS; }
"private" { return TK_PR_PRIVATE; }
"public" { return TK_PR_PUBLIC; }
"protected" { return TK_PR_PROTECTED; }
"end" { return TK_PR_END; }
"default" { return TK_PR_DEFAULT; }

"<=" { return TK_OC_LE; }
">=" { return TK_OC_GE; }
"==" { return TK_OC_EQ; }
"!=" { return TK_OC_NE; }
"&&" { return TK_OC_AND; }
"||" { return TK_OC_OR; }
">>" { return TK_OC_SR; }
"<<" { return TK_OC_SL; }

{id} { return TK_IDENTIFICADOR; }
{char_esp} { return yytext[0]; }
{linebreak} { printf("linebreak\n"); line_count++; }
{inlinecomment} { printf("inline comment\n"); }

{separator} { printf("SEPARATOR\n"); }

%%

int get_line_number() {
    return line_count;
}