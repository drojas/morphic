---
to: <%=locals.in%>/<%=name%>/package.json
---
{
    "name": "<%= scope ? scope + '/' : '' %><%=name%>",
    "version": "0.0.0",
    "description": "PACK for ...",
    "author": "David Rojas Camaggi <drojascamaggi@gmail.com>",
    "homepage": "",
    "license": "ISC",
    "main": "lib/server.gen.js",
    "directories": {
        "lib": "lib",
        "test": "__tests__"
    },
    "files": [
        "lib"
    ],
    "scripts": {
        "prebuild": "HYGEN_OVERWRITE=1 npx hygen server new --at lib/server.gen.ts",
        "build": "tsc",
        "start": "node lib/server.gen.js",
        "debug": "node --inspect-brk lib/server.gen.js",
        "dev": "tsc-watch --onSuccess \"node lib/server.gen.js\""
    },
    "morphic-pack-include": [
        "@frameless-examples/hello-pack"
    ],
    "dependencies": {
        "fastify": "2.12.0",
        "@frameless-examples/hello-pack": "0.0.0",
        "@frameless/pack": "0.0.0"
    },
    "devDependencies": {
        "@types/express": "4.17.1",
        "tsc-watch": "4.0.0",
        "typescript": "3.7.5"
    }
}