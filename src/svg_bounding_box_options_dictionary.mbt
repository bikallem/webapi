// Auto-generated MoonBit bindings for SVGBoundingBoxOptions dictionary
// Do not edit manually

#external
pub type SVGBoundingBoxOptions

pub impl TJsValue for SVGBoundingBoxOptions with to_js(self: SVGBoundingBoxOptions) -> JsValue = "%identity"


fn svg_bounding_box_options_ffi(fill : JsValue, stroke : JsValue, markers : JsValue, clipped : JsValue) -> SVGBoundingBoxOptions = "webapi_SVGBoundingBoxOptions" "new"


pub fn SVGBoundingBoxOptions::new(
  fill? : Bool? : Bool = true,
  stroke? : Bool? : Bool = false,
  markers? : Bool? : Bool = false,
  clipped? : Bool? : Bool = false) -> SVGBoundingBoxOptions {
    svg_bounding_box_options_ffi(
      TJsValue::to_js(fill)
     ,TJsValue::to_js(stroke)
     ,TJsValue::to_js(markers)
     ,TJsValue::to_js(clipped)
    )
}


pub fn SVGBoundingBoxOptions::empty() -> SVGBoundingBoxOptions = "webapi_Dictionary" "empty"