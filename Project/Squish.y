/* definitions */
%token IDENTIFIER KW_INPUT KW_OUTPUT KW_DELETE KW_ADD KW_RETURN
%token LBRA RBRA LPAR RPAR COM SCOL COL ARROW NUMBER STRING IF
%token ASS_OP PLUS_OP MINUS_OP STAR_OP CROSS_OP EQUALS_OP NOTEQUALS_OP
%token LT_OP LE_OP GT_OP GE_OP CONTAINS_OP

%start program
%%
/* rules */
program:		func_def_list

func_def_list:	func_def
			| 	func_def func_def_list

func_def:		IDENTIFIER LPAR param_list RPAR LBRA statement_list RBRA
			|	IDENTIFIER LPAR RPAR LBRA statement_list RBRA

param_list:		IDENTIFIER
			|	IDENTIFIER COM param_list
			
statement_list:		statement SCOL
			| 	statement SCOL statement_list
			
statement:		var_def | assignment | func_call | loop | input | output
			|	deletion | if_statement | return_statement | add_statement
			
var_def:		IDENTIFIER
assignment:		IDENTIFIER ASS_OP expr
loop:			IDENTIFIER COL NUMBER ARROW IDENTIFIER LBRA statement_list RBRA
input:			KW_INPUT IDENTIFIER
output:			KW_OUTPUT expr
deletion:		KW_DELETE IDENTIFIER
add_statement:	KW_ADD expr COM expr
if_statement:	IF expr LBRA statement_list RBRA
return_statement: KW_RETURN expr

func_call:		IDENTIFIER LPAR arg_list RPAR
			|	IDENTIFIER LPAR RPAR
			
arg_list:		expr
			|	expr COM arg_list
			
expr:			operand operator expr
			|	operand
			
operand:		IDENTIFIER | set_literal | NUMBER | STRING | func_call
			|	parenthesized_expr
			
parenthesized_expr: LPAR expr RPAR

operator:		PLUS_OP | MINUS_OP | STAR_OP | CROSS_OP | EQUALS_OP | NOTEQUALS_OP | LT_OP | LE_OP
			|	GT_OP | GE_OP | CONTAINS_OP

set_literal:	LBRA elmt_list RBRA
			|	LBRA RBRA
			
elmt_list:		expr
			|	expr COM elmt_list

%%
/* routines */
#include "lex.yy.c"

int lineno = 1;

int yyerror (char *s) {
	fprintf(stderr, "unexpected token in line: %d" ,lineno);
}

int main () {
	yyparse();
	printf("Successfully parsed.");
	return 0;
}
