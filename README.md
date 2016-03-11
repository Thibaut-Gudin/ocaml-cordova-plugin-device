# ocaml-cordova-plugin-device

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

## How to use ?

See the official documentation
[cordova-plugin-device](https://github.com/apache/cordova-plugin-device)

## ! BE CAREFUL !

The device plugin creates a new object called *device*, but the object is
available when the *deviceready* event is handled.

We don't provide a *device* variable in this plugin (as said in the official
documentation on js_of_ocaml). If we did, *device* will be set to **undefined**
because the *device* object doesn't exist when we create the variable.

We also provide a function of type unit -> device Js.t which does returns the
*device* object. You need to call it when the deviceready event is handled, eg

```OCaml
let on_device_ready =
  let d = Device.device () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```
