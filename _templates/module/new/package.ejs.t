---
to: <%=locals.in%>/<%=name%>/package.json
---
{
    "name": "<%= scope ? scope + '/' : '' %><%=name%>",
    "version": "0.0.0",
    "description": "> TODO: description",
    "author": "David Rojas Camaggi <drojascamaggi@gmail.com>",
    "homepage": "",
    "license": "ISC",
    "main": "lib/<%=name%>.js",
    "directories": {
        "lib": "lib",
        "test": "__tests__"
    },
    "files": [
        "lib"
    ],
    "scripts": {
        "build": "tsc",
        "pretest": "npm run build",
        "test": "jest",
        "build-debuggable": "npm run build -- --sourceMap false --inlineSourceMap true",
        "inspector": "node --inspect-brk node_modules/.bin/jest --runInBand",
        "debug": "npm run build-debuggable && npm run inspector"
    },
    "devDependencies": {
        "jest": "24.9.0",
        "typescript": "3.7.5"
    }
}
