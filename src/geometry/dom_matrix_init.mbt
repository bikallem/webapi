// Auto-generated MoonBit bindings for DOMMatrixInit dictionary

// Do not edit manually

///|
#external
pub type DOMMatrixInit

///|
pub impl TJsValue for DOMMatrixInit with to_js(self : DOMMatrixInit) -> JsValue = "%identity"

///|
fn dom_matrix_init_ffi(
  m13 : JsValue,
  m14 : JsValue,
  m23 : JsValue,
  m24 : JsValue,
  m31 : JsValue,
  m32 : JsValue,
  m33 : JsValue,
  m34 : JsValue,
  m43 : JsValue,
  m44 : JsValue,
  is2_d : JsValue,
) -> DOMMatrixInit = "webapi_DOMMatrixInit" "new"

///|
pub fn DOMMatrixInit::new(
  m13? : Double = 0,
  m14? : Double = 0,
  m23? : Double = 0,
  m24? : Double = 0,
  m31? : Double = 0,
  m32? : Double = 0,
  m33? : Double = 1,
  m34? : Double = 0,
  m43? : Double = 0,
  m44? : Double = 1,
  is2_d? : Bool,
) -> DOMMatrixInit {
  let is2_d_js = opt_to_js(is2_d)
  dom_matrix_init_ffi(
    TJsValue::to_js(m13),
    TJsValue::to_js(m14),
    TJsValue::to_js(m23),
    TJsValue::to_js(m24),
    TJsValue::to_js(m31),
    TJsValue::to_js(m32),
    TJsValue::to_js(m33),
    TJsValue::to_js(m34),
    TJsValue::to_js(m43),
    TJsValue::to_js(m44),
    is2_d_js,
  )
}

///|
pub fn DOMMatrixInit::empty() -> DOMMatrixInit = "webapi_Dictionary" "empty"
