import { aliasTable } from 'actions/aliasTable'
import * as ParserAndLexer from './jison/scripts'
const parser = new ParserAndLexer.TsCalcParser()

export default { parser, aliasTable }
