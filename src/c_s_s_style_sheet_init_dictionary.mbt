// Auto-generated MoonBit bindings for CSSStyleSheetInit dictionary
// Do not edit manually

#external
pub type CSSStyleSheetInit

pub impl TJsValue for CSSStyleSheetInit with to_js(self: CSSStyleSheetInit) -> JsValue = "%identity"


fn c_s_s_style_sheet_init_ffi(base_u_r_l : JsValue, media : JsValue, disabled : JsValue) -> CSSStyleSheetInit = "webapi_CSSStyleSheetInit" "new"


pub fn CSSStyleSheetInit::new(
  base_u_r_l? : String? : String = String::null(),
  media? : JsValue? : JsValue = "",
  disabled? : Bool? : Bool = false) -> CSSStyleSheetInit {
    c_s_s_style_sheet_init_ffi(
      TJsValue::to_js(base_u_r_l)
     ,TJsValue::to_js(media)
     ,TJsValue::to_js(disabled)
    )
}


pub fn CSSStyleSheetInit::empty() -> CSSStyleSheetInit = "webapi_Dictionary" "empty"