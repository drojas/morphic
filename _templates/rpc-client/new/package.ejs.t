---
to: <%=locals.in%>/<%=name%>/package.json
---
{
    "name": "<%= scope ? scope + '/' : '' %><%=name%>",
    "version": "0.0.0",
    "description": "RPC for ...",
    "author": "David Rojas Camaggi <drojascamaggi@gmail.com>",
    "homepage": "",
    "license": "ISC",
    "main": "lib/client.gen.js",
    "directories": {
        "lib": "lib",
        "test": "__tests__"
    },
    "files": [
        "lib"
    ],
    "scripts": {
        "prebuild": "HYGEN_OVERWRITE=1 npx hygen client new --at lib/client.gen.ts",
        "build": "tsc",
        "test": "jest",
        "debug": "tsc-watch --onSuccess \"node --inspect-brk lib/client.gen.js\"",
        "dev": "tsc-watch --onSuccess \"node lib/client.gen.js\""
    },
    "dependencies": {
        "@frameless/rpc": "0.0.0"
    },
    "devDependencies": {
        "<%=of%>": "<%=version%>",
        "tsc-watch": "4.0.0",
        "typescript": "3.7.5",
        "jest": "24.9.0",
        "@types/jest": "24.0.23"
    }
}
