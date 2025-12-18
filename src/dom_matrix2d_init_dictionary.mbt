// Auto-generated MoonBit bindings for DOMMatrix2DInit dictionary
// Do not edit manually

#external
pub type DOMMatrix2DInit

pub impl TJsValue for DOMMatrix2DInit with to_js(self: DOMMatrix2DInit) -> JsValue = "%identity"


fn dom_matrix2d_init_ffi(a : JsValue, b : JsValue, c : JsValue, d : JsValue, e : JsValue, f : JsValue, m11 : JsValue, m12 : JsValue, m21 : JsValue, m22 : JsValue, m41 : JsValue, m42 : JsValue) -> DOMMatrix2DInit = "webapi_DOMMatrix2DInit" "new"


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
  m42? : Double) -> DOMMatrix2DInit {
    dom_matrix2d_init_ffi(
      opt_to_js(a)
     ,opt_to_js(b)
     ,opt_to_js(c)
     ,opt_to_js(d)
     ,opt_to_js(e)
     ,opt_to_js(f)
     ,opt_to_js(m11)
     ,opt_to_js(m12)
     ,opt_to_js(m21)
     ,opt_to_js(m22)
     ,opt_to_js(m41)
     ,opt_to_js(m42)
    )
}


pub fn DOMMatrix2DInit::empty() -> DOMMatrix2DInit = "webapi_Dictionary" "empty"