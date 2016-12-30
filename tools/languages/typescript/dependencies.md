# Dependencies

Most web applications strongly rely on third party libraries, modules, frameworks, etc. A good understanding the main
package managers might be helpful.

## Package Managers ##

Package Managers are services that maintain public registries of available modules.
For web projects, here are four popular package managers.

### npm

[npm](http://npmjs.com/): This is one of the very first package managers for the web. It was first created for Node.js
but can now also serve files for browsers. Is the most important package managers due to it's tight integration with Node.js
and huge number of libraries. Every library must be installed at least with npm.

### jspm
  
[jspm](http://jspm.io/): This package manager is more focused on dependencies used in the browser. It acts as successor
to [bower](http://bower.io/). Like bower, it has always used a browser-friendly flat structure; but unlike bower, JSPM
handles the configuration steps automatically. The modules installed with JSPM cannot be loaded directly, they must be
loaded with the [SystemJS](https://github.com/systemjs/systemjs) loader. It's a powerful loader for the browser
(with the possibility to transpile files in the browser or bundle various scripts together), but it comes with limitations
when used in Node.js (ie. the current directory `__directory` becomes unavailable)

*Note*: I no longer use it since it does not play well with linked modules.

### typings

[Typings](https://github.com/typings/typings): This recent package manager handles Typescript defintion files (`*.d.ts`).
It is a replacement for [DefinitelyTyped](http://definitelytyped.org/), a popular definitions repository. Typings attends
to solve the main issues of DefinitelyTyped: everyone can publish its typings directly from it's own repository (all the typings
no longer live in a single colossal repository) and it promots external over ambient modules (local over global) and allows
to solve the various conflicts arising from using DefinitelyTyped

### bower

An old package manager dedicated to browser libraries and assets. Superceded by npm.

## Adding a dependency

### npm ###

Are you going to use this library during your application's runtime ?

```shell
# Run as a normal user
npm install --save <package>
```

Otherwise, if you plan to use it only during the build or test process:

```shell
# Run as a normal user
npm install --save-dev <package>
```

For the moment, you should instal `@types/*` dependencies as "devDependencies".

### jspm ###

```shell
# Run as a normal user
jspm install <package>
```

### typings ###

Since *typings* is relatively recent and acts as a successor to *DefinitelyTyped*, some modules might not be available yet as
external modules but only as ambient modules from *DefinitelyTyped*.

To determine the type of module, use `typings search <package>`.

If it is only available as `dt`, use:

```shell
# Run as a normal user
npm install --save-dev @types/<package>
```

Otherwise, if it is available as an `npm` package:

```shell
# Run as a normal user
typings install --save npm~<package>
```

If the definitions are not available at all, you'll need to write the typings.
**TODO**: document how to type libraries.
