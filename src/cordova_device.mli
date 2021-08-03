(* -------------------------------------------------------------------------- *)
val available : unit -> bool [@@js.get "device.available"]

(* smartphone platform *)
val platform : unit -> string [@@js.get "device.platform"]

(* OS version *)
val version : unit -> string [@@js.get "device.version"]

val uuid : unit -> string [@@js.get "device.uuid"]

val cordova : unit -> string [@@js.get "device.cordova"]

val model : unit -> string [@@js.get "device.model"]

val serial : unit -> string [@@js.get "device.serial"]

val manufacturer : unit -> string [@@js.get "device.manufacturer"]

val is_virtual : unit -> bool [@@js.get "device.isVirtual"]

(* -------------------------------------------------------------------------- *)

[@@@js.stop]

val test_global : unit -> bool

[@@@js.start]

[@@@js.implem
let test_global () =
  Js_of_ocaml.Js.Optdef.test Js_of_ocaml.Js.Unsafe.global##.device]
