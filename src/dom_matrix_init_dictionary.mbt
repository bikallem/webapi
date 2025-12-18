// Auto-generated MoonBit bindings for DOMMatrixInit dictionary
// Do not edit manually

#external
pub type DOMMatrixInit

pub impl TJsValue for DOMMatrixInit with to_js(self: DOMMatrixInit) -> JsValue = "%identity"


fn dom_matrix_init_ffi(a : JsValue, b : JsValue, c : JsValue, d : JsValue, e : JsValue, f : JsValue, m11 : JsValue, m12 : JsValue, m21 : JsValue, m22 : JsValue, m41 : JsValue, m42 : JsValue, m13 : JsValue, m14 : JsValue, m23 : JsValue, m24 : JsValue, m31 : JsValue, m32 : JsValue, m33 : JsValue, m34 : JsValue, m43 : JsValue, m44 : JsValue, is2d : JsValue) -> DOMMatrixInit = "webapi_DOMMatrixInit" "new"


pub fn DOMMatrixInit::new(
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
  m13? : Double? : Double = 0,
  m14? : Double? : Double = 0,
  m23? : Double? : Double = 0,
  m24? : Double? : Double = 0,
  m31? : Double? : Double = 0,
  m32? : Double? : Double = 0,
  m33? : Double? : Double = 1,
  m34? : Double? : Double = 0,
  m43? : Double? : Double = 0,
  m44? : Double? : Double = 1,
  is2d? : Bool) -> DOMMatrixInit {
    dom_matrix_init_ffi(
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
     ,TJsValue::to_js(m13)
     ,TJsValue::to_js(m14)
     ,TJsValue::to_js(m23)
     ,TJsValue::to_js(m24)
     ,TJsValue::to_js(m31)
     ,TJsValue::to_js(m32)
     ,TJsValue::to_js(m33)
     ,TJsValue::to_js(m34)
     ,TJsValue::to_js(m43)
     ,TJsValue::to_js(m44)
     ,opt_to_js(is2d)
    )
}


pub fn DOMMatrixInit::empty() -> DOMMatrixInit = "webapi_Dictionary" "empty"