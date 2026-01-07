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
extern "js" fn dom_matrix_init_ffi(
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
  is2d : JsValue,
) -> DOMMatrixInit =
  #|(a, b, c, d, e, f, m11, m12, m21, m22, m41, m42, m13, m14, m23, m24, m31, m32, m33, m34, m43, m44, is2D) => {
  #|  const obj = {};
  #|  if (a !== undefined) obj.a = a;
  #|  if (b !== undefined) obj.b = b;
  #|  if (c !== undefined) obj.c = c;
  #|  if (d !== undefined) obj.d = d;
  #|  if (e !== undefined) obj.e = e;
  #|  if (f !== undefined) obj.f = f;
  #|  if (m11 !== undefined) obj.m11 = m11;
  #|  if (m12 !== undefined) obj.m12 = m12;
  #|  if (m21 !== undefined) obj.m21 = m21;
  #|  if (m22 !== undefined) obj.m22 = m22;
  #|  if (m41 !== undefined) obj.m41 = m41;
  #|  if (m42 !== undefined) obj.m42 = m42;
  #|  if (m13 !== undefined) obj.m13 = m13;
  #|  if (m14 !== undefined) obj.m14 = m14;
  #|  if (m23 !== undefined) obj.m23 = m23;
  #|  if (m24 !== undefined) obj.m24 = m24;
  #|  if (m31 !== undefined) obj.m31 = m31;
  #|  if (m32 !== undefined) obj.m32 = m32;
  #|  if (m33 !== undefined) obj.m33 = m33;
  #|  if (m34 !== undefined) obj.m34 = m34;
  #|  if (m43 !== undefined) obj.m43 = m43;
  #|  if (m44 !== undefined) obj.m44 = m44;
  #|  if (is2D !== undefined) obj.is2D = is2D;
  #|  return obj;
  #|}

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
  m13? : Double = (0 : Double),
  m14? : Double = (0 : Double),
  m23? : Double = (0 : Double),
  m24? : Double = (0 : Double),
  m31? : Double = (0 : Double),
  m32? : Double = (0 : Double),
  m33? : Double = (1 : Double),
  m34? : Double = (0 : Double),
  m43? : Double = (0 : Double),
  m44? : Double = (1 : Double),
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
    opt_to_js(is2d),
  )
}

///|
extern "js" fn dom_matrix_init_empty_ffi() -> DOMMatrixInit = "() => {}"

///|
pub fn DOMMatrixInit::empty() -> DOMMatrixInit {
  dom_matrix_init_empty_ffi()
}
