// Auto-generated MoonBit bindings for BoxQuadOptions dictionary
// Do not edit manually

#external
pub type BoxQuadOptions

pub impl TJsValue for BoxQuadOptions with to_js(self: BoxQuadOptions) -> JsValue = "%identity"


fn box_quad_options_ffi(box : JsValue, relative_to : JsValue) -> BoxQuadOptions = "webapi_BoxQuadOptions" "new"


pub fn BoxQuadOptions::new(
  box? : CSSBoxType? : CSSBoxType = "border",
  relative_to? : GeometryNode) -> BoxQuadOptions {
    box_quad_options_ffi(
      TJsValue::to_js(box)
     ,opt_to_js(relative_to)
    )
}


pub fn BoxQuadOptions::empty() -> BoxQuadOptions = "webapi_Dictionary" "empty"