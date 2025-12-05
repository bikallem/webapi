// Auto-generated MoonBit bindings for DOMMatrix2DInit dictionary

// Do not edit manually

///|
#external
pub type DOMMatrix2DInit

///|
pub impl TJsValue for DOMMatrix2DInit with to_js(self : DOMMatrix2DInit) -> JsValue = "%identity"

///|
fn dom_matrix2_d_init_ffi(
  a : JsValue,
  b : JsValue,
  c : JsValue,
  d : JsValue,
  e : JsValue,
  f : JsValue,
  m11 : JsValue,
  m12 : JsValue,
  m21 : JsValue,
  m22 : JsValue,
  m41 : JsValue,
  m42 : JsValue,
) -> DOMMatrix2DInit = "webapi_DOMMatrix2DInit" "new"

///|
pub fn DOMMatrix2DInit::new(
  a? : Double,
  b? : Double,
  c? : Double,
  d? : Double,
  e? : Double,
  f? : Double,
  m11? : Double,
  m12? : Double,
  m21? : Double,
  m22? : Double,
  m41? : Double,
  m42? : Double,
) -> DOMMatrix2DInit {
  let a_js = opt_to_js(a)
  let b_js = opt_to_js(b)
  let c_js = opt_to_js(c)
  let d_js = opt_to_js(d)
  let e_js = opt_to_js(e)
  let f_js = opt_to_js(f)
  let m11_js = opt_to_js(m11)
  let m12_js = opt_to_js(m12)
  let m21_js = opt_to_js(m21)
  let m22_js = opt_to_js(m22)
  let m41_js = opt_to_js(m41)
  let m42_js = opt_to_js(m42)
  dom_matrix2_d_init_ffi(
    a_js, b_js, c_js, d_js, e_js, f_js, m11_js, m12_js, m21_js, m22_js, m41_js, m42_js,
  )
}

///|
pub fn DOMMatrix2DInit::empty() -> DOMMatrix2DInit = "webapi_Dictionary" "empty"
