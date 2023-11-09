import * as ParserAndLexer from './jison/scripts'
export { aliasTable } from './actions/aliasTable'
export const parser = new ParserAndLexer.TsCalcParser()
