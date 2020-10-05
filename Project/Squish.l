%option main
%%
\{				printf("LBRA ");
\}				printf("RBRA ");
\(				printf("LPAR ");
\)				printf("RPAR ");
[//].*\n			printf("COMMENT ");
=				printf("ASS_OP ");
-				printf("MINUS_OP ");
\+				printf("PLUS_OP ");
\*				printf("STAR_OP ");
x				printf("CROSS_OP ");
,				printf("COM ");
:				printf("COL ");
;				printf("SCOL ");
set				printf("KW_SET ");
[0-9]+				printf("NUMBER ");
->				printf("ARROW ");
input				printf("KW_INPUT ");
output				printf("KW_OUTPUT ");
delete				printf("KW_DELETE ");
if				printf("IF ");
".*"				printf("STRING ");
\<				printf("LT_OP ");
\>				printf("GT_OP ");
\<=				printf("LE_OP ");
\>=				printf("GE_OP ");
!=				printf("NOTEQUALS_OP ");
\==				printf("EQUALS_OP ");
return				printf("KW_RETURN ");
[A-Za-z]+			printf("IDENTIFIER ");
\<<				printf("CONTAINS_OP");
[ \t] 				;
\n				printf("\n");
.				printf("UNMATCHED CHARACTER");				
%%
extern int lineno;

