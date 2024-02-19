# script-parser
ts library for lexical analysis and parser
![image](https://github.com/moddio/script-parser/assets/42713208/e56e4345-6903-477f-9507-08fe606612a7)

## Something useful
[jison debugger](https://nolanlawson.github.io/jison-debugger/)  
[jison docs](https://gerhobbelt.github.io/jison/docs/)

## Overview
the script-parser is a parser for the moddio2 game engine

🚧 _This project is under heavy development, and is currently lacking both features and docs / usability polish.

## Usage
```
pnpm add script-parser
```

```typescript
import { parser, actionToString } from "script-parser"
console.log(parser.parse('hello script-parser'));
console.log(actionToString({
    o: parser.parse('hello script-parser'),
    defaultReturnType: '',
    gameData: { unitTypes: {} },
    parentKey: ''
}))
```

## Feature List
- converter 
  - [x] string to moddio2 script object
  - [x] moddio2 script object to string

## Compatible moddio2 versions
it's still beta, use the latest version plz
