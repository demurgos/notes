# Modules

For historical reasons, there are multiple ways to use modules in Javascript.

- Immediately Invoked Function Expression (IIFE): jQuery 1
- CommonJS (strict): Node library, express
- CommonJS 2 (loose): Bluebird, express
- Asynchronous Module Definition (AMD): requirejs
- Universal Module Definition (UMD): jQuery 2
- ES2015 (Typescript): Angular 2
- Others

For new code, the ES2015 syntax is recommended since it is the one officially specified.
It works really well with static analysis tools but does not support dynamic loading for
the moment.

## Import

The recommended way to import modules is to use `import` statements at the top of the file.

- If the exported value is a plain namespace object, use the standard ES2015 syntax.

  ```typescript
  import * as path from "path";
  import {Component} from "@angular/core";
  import Incident from "incident";
  import {foo as bar} from "./helpers";
  ```

- If the exported value is _NOT_ a plain namespace object (for example, a function or a class)
  use the `require` compatibility syntax.

  ```typescript
  // Compatibility syntax because Bluebird is a class
  import Bluebird = require("bluebird");
  // Compatibility syntax because tau is a number
  import tau = require("tau");
  // Compatibility syntax because _ 
  ```

Finally, there are some hybrid modules that are not a strict namespace object but register
an equivalent value as a property of the exported object, allowing to use them as a namespace.
If a namespace interface is provided, use it to match the syntax of the specification.

```typescript
// Even if `_` is a function (to create implicit chains), you can use it as a namespace
import * as _ from "lodash";
// `request` is a function but `request.get` is equivalent.
import * as request from "request";
```

### Packages

| Package                          | Recommended import syntax        |
| -------------------------------- | -------------------------------- |
| @angular/*                       | ES2015                           |
| bluebird                         | compatibility                    |
| chai                             | ES2015                           |
| cheerio                          | ES2015                           |
| cookie-parser                    | compatibility                    |
| express                          | compatibility                    |
| jquery                           | compatibility                    |
| lodash                           | ES2015                           |
| path                             | ES2015                           |
| request                          | ES2015                           |
| stream                           | ES2015                           |
| url                              | ES2015                           |

## Export

Use the `export` modifier for declarations of exported values. This way, the visibility of the value
is easily identifiable.

```
export const zero: number = 0;
export function foo(): void {
  console.log("Hello, World!");
}
```

To re-export namespaces, use the `export` statement at the end of the file.

```
import * as foo from "./foo";

// ...

export {foo};
```

Optionnaly, define a default export at the end of the file.

```
export class Bar {
  constructor () {
    // ...
  }
}

export default Bar;
```
