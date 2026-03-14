// Do not edit. This file is generated.
// MoonBit type: SVGBoundingBoxOptions
// Specifications: SVG.idl

/// [SVGBoundingBoxOptions](https://developer.mozilla.org/en-US/docs/Web/API/SVGBoundingBoxOptions)
#external
pub type SVGBoundingBoxOptions

pub impl TJsValue for SVGBoundingBoxOptions with to_js(self: SVGBoundingBoxOptions) -> JsValue = "%identity"

pub impl FromJsAny for SVGBoundingBoxOptions with from_js_any(value : JsAny) -> SVGBoundingBoxOptions = "%identity"

pub fn SVGBoundingBoxOptions::new(fill? : Bool, 
stroke? : Bool, 
markers? : Bool, 
clipped? : Bool) -> SVGBoundingBoxOptions {
  svg_bounding_box_options_ffi(opt_to_js(fill), opt_to_js(stroke), opt_to_js(markers), opt_to_js(clipped))
}

pub fn SVGBoundingBoxOptions::empty() -> SVGBoundingBoxOptions { svg_bounding_box_options_empty_ffi() }

pub fn SVGBoundingBoxOptions::fill(self : SVGBoundingBoxOptions) -> Bool? {
  svg_bounding_box_options_get_fill_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn SVGBoundingBoxOptions::stroke(self : SVGBoundingBoxOptions) -> Bool? {
  svg_bounding_box_options_get_stroke_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn SVGBoundingBoxOptions::markers(self : SVGBoundingBoxOptions) -> Bool? {
  svg_bounding_box_options_get_markers_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn SVGBoundingBoxOptions::clipped(self : SVGBoundingBoxOptions) -> Bool? {
  svg_bounding_box_options_get_clipped_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn svg_bounding_box_options_ffi(fill: JsValue, stroke: JsValue, markers: JsValue, clipped: JsValue) -> SVGBoundingBoxOptions = 
#|(fill, stroke, markers, clipped) => {
#|  const obj = {};
#|  if (fill !== undefined) obj.fill = fill;
#|  if (stroke !== undefined) obj.stroke = stroke;
#|  if (markers !== undefined) obj.markers = markers;
#|  if (clipped !== undefined) obj.clipped = clipped;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn svg_bounding_box_options_empty_ffi() -> SVGBoundingBoxOptions = "() => {}"

#cfg(target="js")
extern "js" fn svg_bounding_box_options_get_fill_ffi(obj: JsValue) -> JsValue = "(obj) => obj.fill"

#cfg(target="js")
extern "js" fn svg_bounding_box_options_get_stroke_ffi(obj: JsValue) -> JsValue = "(obj) => obj.stroke"

#cfg(target="js")
extern "js" fn svg_bounding_box_options_get_markers_ffi(obj: JsValue) -> JsValue = "(obj) => obj.markers"

#cfg(target="js")
extern "js" fn svg_bounding_box_options_get_clipped_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clipped"

#cfg(target="wasm-gc")
fn svg_bounding_box_options_ffi(fill: JsValue, stroke: JsValue, markers: JsValue, clipped: JsValue) -> SVGBoundingBoxOptions = "webapi_SVGBoundingBoxOptions" "new"

#cfg(target="wasm-gc")
fn svg_bounding_box_options_empty_ffi() -> SVGBoundingBoxOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn svg_bounding_box_options_get_fill_ffi(obj: JsValue) -> JsValue = "webapi_SVGBoundingBoxOptions" "get_fill"

#cfg(target="wasm-gc")
fn svg_bounding_box_options_get_stroke_ffi(obj: JsValue) -> JsValue = "webapi_SVGBoundingBoxOptions" "get_stroke"

#cfg(target="wasm-gc")
fn svg_bounding_box_options_get_markers_ffi(obj: JsValue) -> JsValue = "webapi_SVGBoundingBoxOptions" "get_markers"

#cfg(target="wasm-gc")
fn svg_bounding_box_options_get_clipped_ffi(obj: JsValue) -> JsValue = "webapi_SVGBoundingBoxOptions" "get_clipped"