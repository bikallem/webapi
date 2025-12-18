// Auto-generated MoonBit bindings for CSSStyleSheetInit dictionary
// Do not edit manually

#external
pub type CSSStyleSheetInit

pub impl TJsValue for CSSStyleSheetInit with to_js(self: CSSStyleSheetInit) -> JsValue = "%identity"


fn css_style_sheet_init_ffi(base_url : JsValue, media : JsValue, disabled : JsValue) -> CSSStyleSheetInit = "webapi_CSSStyleSheetInit" "new"


pub fn CSSStyleSheetInit::new(
  base_url? : String? : String = String::null(),
  media? : JsValue? : JsValue = "",
  disabled? : Bool? : Bool = false) -> CSSStyleSheetInit {
    css_style_sheet_init_ffi(
      TJsValue::to_js(base_url)
     ,TJsValue::to_js(media)
     ,TJsValue::to_js(disabled)
    )
}


pub fn CSSStyleSheetInit::empty() -> CSSStyleSheetInit = "webapi_Dictionary" "empty"