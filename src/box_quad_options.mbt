// Auto-generated MoonBit bindings for BoxQuadOptions dictionary

// Do not edit manually

///|
#external
pub type BoxQuadOptions

///|
pub impl TJsValue for BoxQuadOptions with to_js(self : BoxQuadOptions) -> JsValue = "%identity"

///|
fn box_quad_options_ffi(box : JsValue, relative_to : JsValue) -> BoxQuadOptions = "webapi_BoxQuadOptions" "new"

///|
pub fn BoxQuadOptions::new(
  box? : CSSBoxType,
  relative_to? : JsValue,
) -> BoxQuadOptions {
  let box_js = opt_to_js(box)
  let relative_to_js = opt_to_js(relative_to)
  box_quad_options_ffi(box_js, relative_to_js)
}

///|
pub fn BoxQuadOptions::empty() -> BoxQuadOptions = "webapi_Dictionary" "empty"
