// Auto-generated MoonBit bindings for DOMPointInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary DOMPointInit {
//     unrestricted double x = 0;
//     unrestricted double y = 0;
//     unrestricted double z = 0;
//     unrestricted double w = 1;
// };

///|
#external
pub type DOMPointInit

///|
pub impl TJsValue for DOMPointInit with to_js(self : DOMPointInit) -> JsValue = "%identity"

///|
fn dom_point_init_ffi(
  x : JsValue,
  y : JsValue,
  z : JsValue,
  w : JsValue,
) -> DOMPointInit = "webapi_DOMPointInit" "new"

///|
pub fn DOMPointInit::new(
  x? : Double = 0,
  y? : Double = 0,
  z? : Double = 0,
  w? : Double = 1,
) -> DOMPointInit {
  dom_point_init_ffi(
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(z),
    TJsValue::to_js(w),
  )
}

///|
pub fn DOMPointInit::empty() -> DOMPointInit = "webapi_Dictionary" "empty"
