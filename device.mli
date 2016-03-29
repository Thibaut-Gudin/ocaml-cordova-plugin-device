(* -------------------------------------------------------------------------- *)
class device : Ojs.t ->
  object
    inherit Ojs.obj

    method available      : bool

    (* smartphone platform *)
    method platform       : string

    (* OS version *)
    method version        : string

    (* smartphone uuid *)
    method uuid           : string

    (* Cordova version *)
    method cordova        : string

    (* Smartphone model *)
    method model          : string

    (* If the application's running on a phone *)
    method is_virtual     : bool

    (* Manufacturer *)
    method manufacturer   : string

    (* Serial *)
    method serial         : string
  end
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
val t : unit -> device
[@@js.get "device"]
(* -------------------------------------------------------------------------- *)
