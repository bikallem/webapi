// Do not edit. This file is generated.
// MoonBit type: DOMMatrixInit
// Specifications: geometry.idl

/// [DOMMatrixInit](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixInit)
#external
pub type DOMMatrixInit

pub impl TJsValue for DOMMatrixInit with to_js(self: DOMMatrixInit) -> JsValue = "%identity"

pub fn DOMMatrixInit::new(a? : Double, 
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
m13? : Double = (0: Double), 
m14? : Double = (0: Double), 
m23? : Double = (0: Double), 
m24? : Double = (0: Double), 
m31? : Double = (0: Double), 
m32? : Double = (0: Double), 
m33? : Double = (1: Double), 
m34? : Double = (0: Double), 
m43? : Double = (0: Double), 
m44? : Double = (1: Double), 
is2d? : Bool) -> DOMMatrixInit {
  dom_matrix_init_ffi(opt_to_js(a), opt_to_js(b), opt_to_js(c), opt_to_js(d), opt_to_js(e), opt_to_js(f), opt_to_js(m11), opt_to_js(m12), opt_to_js(m21), opt_to_js(m22), opt_to_js(m41), opt_to_js(m42), TJsValue::to_js(m13), TJsValue::to_js(m14), TJsValue::to_js(m23), TJsValue::to_js(m24), TJsValue::to_js(m31), TJsValue::to_js(m32), TJsValue::to_js(m33), TJsValue::to_js(m34), TJsValue::to_js(m43), TJsValue::to_js(m44), opt_to_js(is2d))
}

pub fn DOMMatrixInit::empty() -> DOMMatrixInit { dom_matrix_init_empty_ffi() }