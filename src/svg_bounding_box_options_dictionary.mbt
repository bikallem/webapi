// Do not edit. This file is generated.
// MoonBit type: SVGBoundingBoxOptions
// Specifications: SVG.idl

///|
/// [SVGBoundingBoxOptions](https://developer.mozilla.org/en-US/docs/Web/API/SVGBoundingBoxOptions)
#external
pub type SVGBoundingBoxOptions

///|
pub impl TJsValue for SVGBoundingBoxOptions with to_js(
  self : SVGBoundingBoxOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGBoundingBoxOptions with from_js_any(value : JsAny) -> SVGBoundingBoxOptions = "%identity"

///|
pub fn SVGBoundingBoxOptions::new(
  fill? : Bool = true,
  stroke? : Bool = false,
  markers? : Bool = false,
  clipped? : Bool = false,
) -> SVGBoundingBoxOptions {
  svg_bounding_box_options_ffi(
    TJsValue::to_js(fill),
    TJsValue::to_js(stroke),
    TJsValue::to_js(markers),
    TJsValue::to_js(clipped),
  )
}

///|
pub fn SVGBoundingBoxOptions::empty() -> SVGBoundingBoxOptions {
  svg_bounding_box_options_empty_ffi()
}

///|
pub fn SVGBoundingBoxOptions::fill(self : SVGBoundingBoxOptions) -> Bool? {
  svg_bounding_box_options_get_fill_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn SVGBoundingBoxOptions::stroke(self : SVGBoundingBoxOptions) -> Bool? {
  svg_bounding_box_options_get_stroke_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn SVGBoundingBoxOptions::markers(self : SVGBoundingBoxOptions) -> Bool? {
  svg_bounding_box_options_get_markers_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn SVGBoundingBoxOptions::clipped(self : SVGBoundingBoxOptions) -> Bool? {
  svg_bounding_box_options_get_clipped_ffi(TJsValue::to_js(self)).to_option_prim()
}
