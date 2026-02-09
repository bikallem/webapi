///|
fn css_style_sheet_new_ffi(options : JsValue) -> CSSStyleSheet = "webapi_CSSStyleSheet" "new"

///|
fn css_style_sheet_owner_rule_ffi(obj : JsValue) -> CSSRule = "webapi_CSSStyleSheet" "get_ownerRule"

///|
fn css_style_sheet_css_rules_ffi(obj : JsValue) -> CSSRuleList = "webapi_CSSStyleSheet" "get_cssRules"

///|
fn css_style_sheet_insert_rule_ffi(
  obj : JsValue,
  rule : JsValue,
  index : JsValue,
) -> UInt = "webapi_CSSStyleSheet" "insertRule"

///|
fn css_style_sheet_delete_rule_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_CSSStyleSheet" "deleteRule"

///|
fn css_style_sheet_replace_ffi_wasm(obj : JsValue, text : JsValue) -> JsValue = "webapi_CSSStyleSheet" "replace"

///|
fn css_style_sheet_replace_ffi(
  obj : JsValue,
  text : JsValue,
) -> JsPromise[CSSStyleSheet] {
  css_style_sheet_replace_ffi_wasm(obj, text).unsafe_cast()
}

///|
fn css_style_sheet_replace_sync_ffi(obj : JsValue, text : JsValue) -> Unit = "webapi_CSSStyleSheet" "replaceSync"

///|
fn css_style_sheet_rules_ffi(obj : JsValue) -> CSSRuleList = "webapi_CSSStyleSheet" "get_rules"

///|
fn css_style_sheet_add_rule_ffi(
  obj : JsValue,
  selector : JsValue,
  style : JsValue,
  index : JsValue,
) -> Int = "webapi_CSSStyleSheet" "addRule"

///|
fn css_style_sheet_remove_rule_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_CSSStyleSheet" "removeRule"
