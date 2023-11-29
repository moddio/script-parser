import * as ParserAndLexer from './jison/scripts'
export { actionToString } from './utils/obj'
export { aliasTable } from './actions/aliasTable'
export const parser = new ParserAndLexer.TsCalcParser()
