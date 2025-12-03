// Auto-generated MoonBit bindings for CSSStyleSheetInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary CSSStyleSheetInit {
//   DOMString baseURL = null;
//   (MediaList or DOMString) media = "";
//   boolean disabled = false;
// };

///|
#external
pub type CSSStyleSheetInit

///|
pub impl TJsValue for CSSStyleSheetInit with to_js(self : CSSStyleSheetInit) -> JsValue = "%identity"

///|
fn css_style_sheet_init_ffi(base_url : JsValue, media : JsValue, disabled : JsValue) -> CSSStyleSheetInit = "webapi_CSSStyleSheetInit" "new"

///|
pub fn CSSStyleSheetInit::new(
  base_url? : String = JsValue::null(),
  media? : JsValue,
  disabled? : Bool = false
) -> CSSStyleSheetInit {
  let media_js = opt_to_js(media)
  css_style_sheet_init_ffi(TJsValue::to_js(base_url), media_js, TJsValue::to_js(disabled))
}

///|
pub fn CSSStyleSheetInit::empty() -> CSSStyleSheetInit = "webapi_Dictionary" "empty"