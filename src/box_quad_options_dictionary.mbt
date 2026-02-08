// Do not edit. This file is generated.
// MoonBit type: BoxQuadOptions
// Specifications: cssom-view.idl

/// [BoxQuadOptions](https://developer.mozilla.org/en-US/docs/Web/API/BoxQuadOptions)
#external
pub type BoxQuadOptions

pub impl TJsValue for BoxQuadOptions with to_js(self: BoxQuadOptions) -> JsValue = "%identity"

pub fn BoxQuadOptions::new(box? : CSSBoxType = CSSBoxType::Border, 
relative_to? : GeometryNode) -> BoxQuadOptions {
  box_quad_options_ffi(TJsValue::to_js(box), opt_to_js(relative_to))
}

pub fn BoxQuadOptions::empty() -> BoxQuadOptions { box_quad_options_empty_ffi() }