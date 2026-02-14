// Do not edit. This file is generated.
// MoonBit type: DOMMatrixInit
// Specifications: geometry.idl

///|
/// [DOMMatrixInit](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixInit)
#external
pub type DOMMatrixInit

///|
pub impl TJsValue for DOMMatrixInit with to_js(self : DOMMatrixInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for DOMMatrixInit with from_js_any(value : JsAny) -> DOMMatrixInit = "%identity"

///|
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
  m13? : Double,
  m14? : Double,
  m23? : Double,
  m24? : Double,
  m31? : Double,
  m32? : Double,
  m33? : Double,
  m34? : Double,
  m43? : Double,
  m44? : Double,
  is2d? : Bool,
) -> DOMMatrixInit {
  dom_matrix_init_ffi(
    opt_to_js(a),
    opt_to_js(b),
    opt_to_js(c),
    opt_to_js(d),
    opt_to_js(e),
    opt_to_js(f),
    opt_to_js(m11),
    opt_to_js(m12),
    opt_to_js(m21),
    opt_to_js(m22),
    opt_to_js(m41),
    opt_to_js(m42),
    opt_to_js(m13),
    opt_to_js(m14),
    opt_to_js(m23),
    opt_to_js(m24),
    opt_to_js(m31),
    opt_to_js(m32),
    opt_to_js(m33),
    opt_to_js(m34),
    opt_to_js(m43),
    opt_to_js(m44),
    opt_to_js(is2d),
  )
}

///|
pub fn DOMMatrixInit::empty() -> DOMMatrixInit {
  dom_matrix_init_empty_ffi()
}

///|
pub fn DOMMatrixInit::a(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_a_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::b(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_b_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::c(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_c_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::d(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_d_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::e(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_e_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::f(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_f_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::m11(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_m11_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::m12(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_m12_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::m21(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_m21_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::m22(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_m22_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::m41(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_m41_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::m42(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_m42_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::m13(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_m13_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::m14(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_m14_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::m23(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_m23_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::m24(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_m24_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::m31(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_m31_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::m32(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_m32_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::m33(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_m33_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::m34(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_m34_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::m43(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_m43_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::m44(self : DOMMatrixInit) -> Double? {
  let result = dom_matrix_init_get_m44_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn DOMMatrixInit::is2d(self : DOMMatrixInit) -> Bool? {
  let result = dom_matrix_init_get_is2d_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
