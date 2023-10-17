%{var funcs:any = {
    vec2: function(x:any, y:any): any  { 
      return {
        "function": "xyCoordinate",
        "x": x,
        "y": y
      };
    },
    sendChatMessage: function(msg
    : any ): any {
      return {
        "type": "sendChatMessage",
        "message": msg
      }
    },
    toString: function(num: any): any {
      return {
          "function": "numberToString",
          "value": num
      }
    }
  }
  var attr:any = {
    x: function(pos: any): any {
     return {
         "function": "getPositionX",
         "position": pos
      };
    },
    y: function(pos:any ): any {
     return {
         "function": "getPositionY",
         "position": pos
      };
    }
  }
%}

/* lexical grammar */
%lex

%%

\s+                   /* skip whitespace */
["][^"]*["]|['][^']*[']           return 'STRING'
[0-9]+("."[0-9]+)?\b  return 'NUMBER'
[a-zA-Z0-9]+          return 'NAME'
","                   return ','
"*"                   return '*'
"/"                   return '/'
"-"                   return '-'
"+"                   return '+'
"^"                   return '^'
"("                   return '('
")"                   return ')'
"["                   return '['
"]"                   return ']'
"'"                   return "'"
'"'                   return '"'
"."                   return '.'
<<EOF>>               return 'EOF'
.                     return 'INVALID'

/lex

%start expressions
%left '+' '-'
%left '*' '/'
%left '^'
%left UMINUS

%% /* language grammar */
expressions
    : e EOF
      { console.log($1); return $1; }
    ;

expression_list
    : expression_list ',' e
      { $$ = $1.concat([$3]); }
    | expression_list '.' e
      {$$ = $1.concat([$3]);}
    | expression_list '[' e ']'
      {$$ = $1.concat([$3]);}
    | '"' e '"'
      {$$ = $1.concat([$3]);}
    | e
      { $$ = [$1]; }
    ;

e
    : e '+' e
        { $$ = { items: [{operator:"+"},$1, $3]}}
    | e '-' e
        { $$ = { items: [{operator:"-"},$1, $3]}}
    | e '*' e
        { $$ = { items: [{operator:"*"},$1, $3]}}
    | e '/' e
        { $$ = { items: [{operator:"/"},$1, $3]}}
    | '-' e %prec UMINUS
        { $$ = { items: [{operator:"*"},$2, -1]} }
    | '(' e ')'
        { $$ = $2; }
    | NUMBER
        {$$ = Number(yytext);}
    | NAME '(' '"' expression_list '"' ')'
        {$$ = funcs[$NAME].apply(undefined, $expression_list);}
    | NAME '(' expression_list ')'
        {$$ = funcs[$NAME].apply(undefined, $expression_list);}
    | STRING
        {$$ = yytext.slice(1, yytext.length-1)}
    | expression_list '.' NAME
        {$$ = attr[$NAME].apply(undefined,
$expression_list); }
    | expression_list '[' NAME ']'
        {$$ = attr[$NAME].apply(undefined,
$expression_list); }
    | expression_list '[' "'" NAME "'" ']'
        {$$ = attr[$NAME].apply(undefined,
$expression_list); }
    | expression_list '[' '"' NAME '"' ']'
        {$$ = attr[$NAME].apply(undefined,
$expression_list); }
    | STRING '+' STRING
       { $$ =  {
                    "function": "concat",
                    "textA": $1.slice(1, yytext.length-1),
                    "textB": $3.slice(1, yytext.length-1)
               } }
    ;