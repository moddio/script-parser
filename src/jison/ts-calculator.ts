import { JisonParser, JisonParserApi, StateType, SymbolsType, TerminalsType, ProductionsType } from '@ts-jison/parser';
/**
 * parser generated by  @ts-jison/parser-generator 0.4.1-alpha.2
 * @returns Parser implementing JisonParserApi and a Lexer implementing JisonLexerApi.
 */
var funcs = {
    vec2: function(x: object | number, y: object | number): object { 
      return {
        "function": "xyCoordinate",
        "x": x,
        "y": y
      };
    },
    sendChatMessage: function(msg: object | string ): object {
      return {
      "type": "sendChatMessage",
      "message": msg
      }
    },
    toString: function(num: number | object): object {
      return {
        "function": "numberToString",
        "value": num
      }
    }
  }
  var attr = {
    x: function(pos: object): object {
     return {
         "function": "getPositionX",
         "position": pos
      };
    },
    y: function(pos: object): object {
     return {
         "function": "getPositionY",
         "position": pos
      };
    }
  }

export class TsCalcParser extends JisonParser implements JisonParserApi {
    $?: any;
    symbols_: SymbolsType = {"error":2,"expressions":3,"e":4,"EOF":5,"expression_list":6,",":7,".":8,"[":9,"]":10,"+":11,"-":12,"*":13,"/":14,"(":15,")":16,"NUMBER":17,"NAME":18,"'":19,"\"":20,"$accept":0,"$end":1};
    terminals_: TerminalsType = {2:"error",5:"EOF",7:",",8:".",9:"[",10:"]",11:"+",12:"-",13:"*",14:"/",15:"(",16:")",17:"NUMBER",18:"NAME",19:"'",20:"\""};
    productions_: ProductionsType = [0,[3,2],[6,3],[6,3],[6,4],[6,1],[4,3],[4,3],[4,3],[4,3],[4,2],[4,3],[4,1],[4,4],[4,3],[4,4],[4,6],[4,6]];
    table: Array<StateType>;
    defaultActions: {[key:number]: any} = {8:[2,1]};

    constructor (yy = {}, lexer = new TsCalcLexer(yy)) {
      super(yy, lexer);

      // shorten static method to just `o` for terse STATE_TABLE
      const $V0=[1,3],$V1=[1,4],$V2=[1,5],$V3=[1,6],$V4=[7,8,9],$V5=[2,5],$V6=[1,9],$V7=[1,10],$V8=[1,11],$V9=[1,12],$Va=[5,7,8,9,10,11,12,13,14,16],$Vb=[1,15],$Vc=[1,18],$Vd=[1,16],$Ve=[1,17],$Vf=[5,7,8,9,10,11,12,16],$Vg=[7,8,9,16];
      const o = JisonParser.expandParseTable;
      this.table = [{3:1,4:2,6:7,12:$V0,15:$V1,17:$V2,18:$V3},{1:[3]},o($V4,$V5,{5:[1,8],11:$V6,12:$V7,13:$V8,14:$V9}),{4:13,6:7,12:$V0,15:$V1,17:$V2,18:$V3},{4:14,6:7,12:$V0,15:$V1,17:$V2,18:$V3},o($Va,[2,12]),{15:$Vb},{7:$Vc,8:$Vd,9:$Ve},{1:[2,1]},{4:19,6:7,12:$V0,15:$V1,17:$V2,18:$V3},{4:20,6:7,12:$V0,15:$V1,17:$V2,18:$V3},{4:21,6:7,12:$V0,15:$V1,17:$V2,18:$V3},{4:22,6:7,12:$V0,15:$V1,17:$V2,18:$V3},o($Va,[2,10]),o($V4,$V5,{11:$V6,12:$V7,13:$V8,14:$V9,16:[1,23]}),{4:25,6:24,12:$V0,15:$V1,17:$V2,18:$V3},{4:27,6:7,12:$V0,15:$V1,17:$V2,18:[1,26]},{4:31,6:7,12:$V0,15:$V1,17:$V2,18:[1,28],19:[1,29],20:[1,30]},{4:32,6:7,12:$V0,15:$V1,17:$V2,18:$V3},o($Vf,[2,6],{13:$V8,14:$V9}),o($Vf,[2,7],{13:$V8,14:$V9}),o($Va,[2,8]),o($Va,[2,9]),o($Va,[2,11]),{7:$Vc,8:$Vd,9:$Ve,16:[1,33]},o($Vg,$V5,{11:$V6,12:$V7,13:$V8,14:$V9}),o($Va,[2,14],{15:$Vb}),o($Vg,[2,3],{11:$V6,12:$V7,13:$V8,14:$V9}),{10:[1,34],15:$Vb},{18:[1,35]},{18:[1,36]},o($V4,$V5,{10:[1,37],11:$V6,12:$V7,13:$V8,14:$V9}),o($Vg,[2,2],{11:$V6,12:$V7,13:$V8,14:$V9}),o($Va,[2,13]),o($Va,[2,15]),{19:[1,38]},{20:[1,39]},o($Vg,[2,4]),{10:[1,40]},{10:[1,41]},o($Va,[2,16]),o($Va,[2,17])];
    }

    performAction (yytext:string, yyleng:number, yylineno:number, yy:any, yystate:number /* action[1] */, $$:any /* vstack */, _$:any /* lstack */): any {
/* this == yyval */
          var $0 = $$.length - 1;
        switch (yystate) {
case 1:
 console.log($$[$0-1]); return $$[$0-1]; 
break;
case 2:
 this.$ = $$[$0-2].concat([$$[$0]]); 
break;
case 3:
this.$ = $$[$0-2].concat([$$[$0]]);
break;
case 4:
this.$ = $$[$0-3].concat([$$[$0-1]]);
break;
case 5:
 this.$ = [$$[$0]]; 
break;
case 6:
 this.$ = { items: [{operator:"+"},$$[$0-2], $$[$0]]}
break;
case 7:
 this.$ = { items: [{operator:"-"},$$[$0-2], $$[$0]]}
break;
case 8:
 this.$ = { items: [{operator:"*"},$$[$0-2], $$[$0]]}
break;
case 9:
 this.$ = { items: [{operator:"/"},$$[$0-2], $$[$0]]}
break;
case 10:
 this.$ = { items: [{operator:"*"},$$[$0], -1]} 
break;
case 11:
 this.$ = $$[$0-1]; 
break;
case 12:
this.$ = Number(yytext);
break;
case 13:
this.$ = funcs[$$[$0-3]].apply(undefined, $$[$0-1]);
break;
case 14:
this.$ = attr[$$[$0]].apply(undefined,
$$[$0-2]); 
break;
case 15:
this.$ = attr[$$[$0-1]].apply(undefined,
$$[$0-3]); 
break;
case 16: case 17:
this.$ = attr[$$[$0-2]].apply(undefined,
$$[$0-5]); 
break;
        }
    }
}


/* generated by @ts-jison/lexer-generator 0.4.1-alpha.2 */
import { JisonLexer, JisonLexerApi } from '@ts-jison/lexer';

export class TsCalcLexer extends JisonLexer implements JisonLexerApi {
    options: any = {"moduleName":"TsCalc"};
    constructor (yy = {}) {
        super(yy);
    }

    rules: RegExp[] = [
        /^(?:\s+)/,
        /^(?:[0-9]+(?:\.[0-9]+)?\b)/,
        /^(?:[a-zA-Z0-9]+)/,
        /^(?:,)/,
        /^(?:\*)/,
        /^(?:\/)/,
        /^(?:-)/,
        /^(?:\+)/,
        /^(?:\^)/,
        /^(?:\()/,
        /^(?:\))/,
        /^(?:\[)/,
        /^(?:\])/,
        /^(?:')/,
        /^(?:")/,
        /^(?:\.)/,
        /^(?:$)/,
        /^(?:.)/
    ];
    conditions: any = {"INITIAL":{"rules":[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17],"inclusive":true}}
    performAction (yy:any,yy_:any,$avoiding_name_collisions:any,YY_START:any): any {
          var YYSTATE=YY_START;
        switch($avoiding_name_collisions) {
    case 0:/* skip whitespace */
      break;
    case 1:return 17
      break;
    case 2:return 18
      break;
    case 3:return 7
      break;
    case 4:return 13
      break;
    case 5:return 14
      break;
    case 6:return 12
      break;
    case 7:return 11
      break;
    case 8:return '^'
      break;
    case 9:return 15
      break;
    case 10:return 16
      break;
    case 11:return 9
      break;
    case 12:return 10
      break;
    case 13:return "'"
      break;
    case 14:return 20
      break;
    case 15:return 8
      break;
    case 16:return 5
      break;
    case 17:return 'INVALID'
      break;
        }
    }
}


