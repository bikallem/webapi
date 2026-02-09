///|
extern "js" fn dom_matrix2d_init_ffi(
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
) -> DOMMatrix2DInit =
  #|(a, b, c, d, e, f, m11, m12, m21, m22, m41, m42) => {
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
  #|  return obj;
  #|}

///|
extern "js" fn dom_matrix2d_init_empty_ffi() -> DOMMatrix2DInit = "() => {}"
