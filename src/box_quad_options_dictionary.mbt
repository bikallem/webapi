// Do not edit. This file is generated.
// MoonBit type: BoxQuadOptions
// Specifications: cssom-view.idl

///|
/// [BoxQuadOptions](https://developer.mozilla.org/en-US/docs/Web/API/BoxQuadOptions)
#external
pub type BoxQuadOptions

///|
pub impl TJsValue for BoxQuadOptions with to_js(self : BoxQuadOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for BoxQuadOptions with from_js_any(value : JsAny) -> BoxQuadOptions = "%identity"

///|
pub fn BoxQuadOptions::new(
  box? : CSSBoxType = CSSBoxType::Border,
  relative_to? : &TGeometryNode,
) -> BoxQuadOptions {
  box_quad_options_ffi(
    TJsValue::to_js(box),
    match relative_to {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
pub fn BoxQuadOptions::empty() -> BoxQuadOptions {
  box_quad_options_empty_ffi()
}

///|
pub fn BoxQuadOptions::box(self : BoxQuadOptions) -> CSSBoxType? {
  let result = box_quad_options_get_box_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn BoxQuadOptions::relative_to(self : BoxQuadOptions) -> GeometryNode? {
  let result = box_quad_options_get_relative_to_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
