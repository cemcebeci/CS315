%{
#include <stdio.h>
extern int lineno;
%}
%%
\{			return(LBRA);
\}			return(RBRA);
\(			return(LPAR);
\)			return(RPAR);
[//].*\n		;
=			return(ASS_OP);
-			return(MINUS_OP);
\+			return(PLUS_OP);
\*			return(STAR_OP);
x			return(CROSS_OP);
,			return(COM);
:			return(COL);
;			return(SCOL);
[0-9]+			return(NUMBER);
->			return(ARROW);
input			return(KW_INPUT);
output			return(KW_OUTPUT);
delete			return(KW_DELETE);
if			return(IF);
".*"			return(STRING);
\<			return(LT_OP);
\>			return(GT_OP);
\<=			return(LE_OP);
\>=			return(GE_OP);
!=			return(NOTEQUALS_OP);
\==			return(EQUALS_OP);
\<<			return(CONTAINS_OP);
return			return(KW_RETURN);
[A-Za-z]+		return(IDENTIFIER);
[ \t] 			;
\n			lineno++;
.			{fprintf(stderr, "unmathced character \"%s\" in line: %d", yytext, lineno); exit(1);}
%%
int yywrap() {return 1;}
