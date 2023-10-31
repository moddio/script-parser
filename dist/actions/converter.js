"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const jsonfile_1 = __importDefault(require("jsonfile"));
jsonfile_1.default.readFile('./src/actions/actions.json', (err, obj) => {
    if (err !== null) {
        console.error(err);
    }
    const actionsObj = {};
    const keywordsArr = [];
    Object.values(obj).map((v, idx) => {
        const value = v;
        const actionObj = {
            function: value.key
        };
        let length = 0;
        value.data.fragments.map((frag, index) => {
            if (frag.type === 'variable' && (frag.field !== undefined)) {
                actionObj[frag.field] = String.fromCharCode(length + 97);
                length += 1;
            }
        });
        let str = '';
        for (let i = 0; i <= length; i++) {
            str += String.fromCharCode(i + 97) + '#';
        }
        str += `{return ${JSON.stringify(actionObj)}}`;
        let count = 0;
        actionsObj[value.key] = str.replace(/"/g, function (match) {
            count++;
            return (count > 4) ? '' : match;
        });
        keywordsArr.push(value.key);
    });
    jsonfile_1.default.writeFileSync('./src/actions/keywords.json', keywordsArr);
    jsonfile_1.default.writeFileSync('./src/actions/converted_actions.json', actionsObj);
});
