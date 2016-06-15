(* -------------------------------------------------------------------------- *)
val available      : bool
[@@js.global "device.available"]

(* smartphone platform *)
val platform       : string
[@@js.global "device.platform"]

(* OS version *)
val version        : string
[@@js.global "device.version"]

(* smartphone uuid *)
val uuid           : string
[@@js.global "device.uuid"]

(* Cordova version *)
val cordova        : string
[@@js.global "device.cordova"]

(* Smartphone model *)
val model          : string
[@@js.global "device.model"]

(* If the application's running on a phone *)
val is_virtual     : bool
[@@js.global "device.isVirtual"]

(* Manufacturer *)
val manufacturer   : string
[@@js.global "device.manufacturer"]

(* Serial *)
val serial         : string
[@@js.global "device.serial"]
(* -------------------------------------------------------------------------- *)
