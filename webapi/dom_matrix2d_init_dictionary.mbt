// Do not edit. This file is generated.
// MoonBit type: DOMMatrix2DInit
// Specifications: geometry.idl

/// [DOMMatrix2DInit](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix2DInit)
#external
pub type DOMMatrix2DInit

pub impl TJsValue for DOMMatrix2DInit with to_js(self: DOMMatrix2DInit) -> JsValue = "%identity"

pub impl FromJsAny for DOMMatrix2DInit with from_js_any(value : JsAny) -> DOMMatrix2DInit = "%identity"

pub fn DOMMatrix2DInit::new(a? : Double, 
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
  dom_matrix2d_init_ffi(opt_to_js(a), opt_to_js(b), opt_to_js(c), opt_to_js(d), opt_to_js(e), opt_to_js(f), opt_to_js(m11), opt_to_js(m12), opt_to_js(m21), opt_to_js(m22), opt_to_js(m41), opt_to_js(m42))
}

pub fn DOMMatrix2DInit::empty() -> DOMMatrix2DInit { dom_matrix2d_init_empty_ffi() }

pub fn DOMMatrix2DInit::a(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_a_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn DOMMatrix2DInit::b(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_b_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn DOMMatrix2DInit::c(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_c_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn DOMMatrix2DInit::d(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_d_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn DOMMatrix2DInit::e(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_e_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn DOMMatrix2DInit::f(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_f_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn DOMMatrix2DInit::m11(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_m11_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn DOMMatrix2DInit::m12(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_m12_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn DOMMatrix2DInit::m21(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_m21_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn DOMMatrix2DInit::m22(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_m22_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn DOMMatrix2DInit::m41(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_m41_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn DOMMatrix2DInit::m42(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_m42_ffi(TJsValue::to_js(self)).to_option_prim()
}