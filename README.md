# ocaml-cordova-plugin-device

[![LGPL-v3 licensed](https://img.shields.io/badge/license-LGPLv3-blue.svg)](https://raw.githubusercontent.com/dannywillems/ocaml-cordova-plugin-device/master/LICENSE)
[![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-device.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-device)

Binding to
[cordova-plugin-device](https://github.com/apache/cordova-plugin-device)

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-device-example).

## What does cordova-plugin-device do ?

```
This plugin defines a global device object, which describes the device's
hardware and software. Although the object is in the global scope, it is not
available until after the deviceready event.
```

Source: [cordova-plugin-device](https://github.com/apache/cordova-plugin-device)

## Repository branches and tags

We are migrating bindings from
[js_of_ocaml](https://github.com/ocsigen/js_of_ocaml) (low level bindings) to
[gen_js_api](https://github.com/lexifi/gen_js_api) (high level bindings).

The gen_js_api binding allows to use *pure* ocaml types (you don't have to use
the ## syntax from js_of_ocaml or Js.string type but only # and string type).

The js_of_ocaml version is available in the branch
[*js_of_ocaml*](https://github.com/dannywillems/ocaml-cordova-plugin-device/tree/js_of_ocaml)
but we **recommend** to use the gen_js_api version which is the master branch.

## How to install and compile your project by using this plugin ?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0
```

You can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-device https://github.com/dannywillems/ocaml-cordova-plugin-device.git
```

and to compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package cordova-plugin-device [...] -linkpkg [other arguments]
```

Don't forget to install the cordova plugin device with
```Shell
cordova plugin add cordova-plugin-device
```

## How to use ?

See the official documentation
[cordova-plugin-device](https://github.com/apache/cordova-plugin-device)
