// Do not edit. This file is generated.
// MoonBit type: CSSStyleSheet
// Specifications: cssom.idl

///|
/// [CSSStyleSheet](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet)
#external
pub type CSSStyleSheet

///|
pub impl TJsValue for CSSStyleSheet with to_js(self : CSSStyleSheet) -> JsValue = "%identity"

///|
pub impl FromJsAny for CSSStyleSheet with from_js_any(value : JsAny) -> CSSStyleSheet = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TCSSStyleSheet] CSSStyleSheet::into(self : CSSStyleSheet) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TCSSStyleSheet] CSSStyleSheet::unsafe_into(
  self : CSSStyleSheet,
) -> T = "%identity"

///|
pub impl HasConstructor for CSSStyleSheet with constructor_name() {
  "CSSStyleSheet"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCSSStyleSheet + HasConstructor] CSSStyleSheet::try_into(
  self : CSSStyleSheet,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TCSSStyleSheet for CSSStyleSheet

///|
pub impl TStyleSheet for CSSStyleSheet

///|
pub fn CSSStyleSheet::new(options? : CSSStyleSheetInit) -> CSSStyleSheet {
  css_style_sheet_new_ffi(opt_to_js(options))
}

///|
/// [CSSStyleSheet](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet) interface.
pub trait TCSSStyleSheet: TStyleSheet {
  owner_rule(self : Self) -> CSSRule = _
  css_rules(self : Self) -> CSSRuleList = _
  insert_rule(self : Self, rule : CSSOMString, index? : UInt) -> UInt = _
  delete_rule(self : Self, index : UInt) -> Unit = _
  replace(self : Self, text : String) -> JsPromise[CSSStyleSheet] = _
  replace_sync(self : Self, text : String) -> Unit = _
  rules(self : Self) -> CSSRuleList = _
  add_rule(self : Self, selector? : String, style? : String, index? : UInt) -> Int = _
  remove_rule(self : Self, index? : UInt) -> Unit = _
}

///|
/// [CSSStyleSheet.ownerRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/ownerRule)
impl TCSSStyleSheet with owner_rule(self : Self) -> CSSRule {
  css_style_sheet_owner_rule_ffi(TJsValue::to_js(self))
}

///|
/// [CSSStyleSheet.cssRules](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/cssRules)
impl TCSSStyleSheet with css_rules(self : Self) -> CSSRuleList {
  css_style_sheet_css_rules_ffi(TJsValue::to_js(self))
}

///|
/// [CSSStyleSheet.insertRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/insertRule)
impl TCSSStyleSheet with insert_rule(
  self : Self,
  rule : CSSOMString,
  index? : UInt,
) -> UInt {
  css_style_sheet_insert_rule_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rule),
    opt_to_js(index),
  )
}

///|
/// [CSSStyleSheet.deleteRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/deleteRule)
impl TCSSStyleSheet with delete_rule(self : Self, index : UInt) -> Unit {
  css_style_sheet_delete_rule_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
/// [CSSStyleSheet.replace](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/replace)
impl TCSSStyleSheet with replace(self : Self, text : String) -> JsPromise[
  CSSStyleSheet,
] {
  css_style_sheet_replace_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

///|
/// [CSSStyleSheet.replaceSync](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/replaceSync)
impl TCSSStyleSheet with replace_sync(self : Self, text : String) -> Unit {
  css_style_sheet_replace_sync_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

///|
/// [CSSStyleSheet.rules](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/rules)
impl TCSSStyleSheet with rules(self : Self) -> CSSRuleList {
  css_style_sheet_rules_ffi(TJsValue::to_js(self))
}

///|
/// [CSSStyleSheet.addRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/addRule)
impl TCSSStyleSheet with add_rule(
  self : Self,
  selector? : String,
  style? : String,
  index? : UInt,
) -> Int {
  css_style_sheet_add_rule_ffi(
    TJsValue::to_js(self),
    opt_to_js(selector),
    opt_to_js(style),
    opt_to_js(index),
  )
}

///|
/// [CSSStyleSheet.removeRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/removeRule)
impl TCSSStyleSheet with remove_rule(self : Self, index? : UInt) -> Unit {
  css_style_sheet_remove_rule_ffi(TJsValue::to_js(self), opt_to_js(index))
}

///|
#cfg(target="js")
extern "js" fn css_style_sheet_new_ffi(options : JsValue) -> CSSStyleSheet = "(options) => new CSSStyleSheet(options)"

///|
#cfg(target="js")
extern "js" fn css_style_sheet_owner_rule_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ownerRule"

///|
#cfg(target="js")
fn css_style_sheet_owner_rule_ffi(obj : JsValue) -> CSSRule {
  css_style_sheet_owner_rule_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_style_sheet_css_rules_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cssRules"

///|
#cfg(target="js")
fn css_style_sheet_css_rules_ffi(obj : JsValue) -> CSSRuleList {
  css_style_sheet_css_rules_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_style_sheet_insert_rule_ffi_js(
  obj : JsValue,
  rule : JsValue,
  index : JsValue,
) -> JsValue = "(obj, rule, index) => obj.insertRule(rule, index)"

///|
#cfg(target="js")
fn css_style_sheet_insert_rule_ffi(
  obj : JsValue,
  rule : JsValue,
  index : JsValue,
) -> UInt {
  css_style_sheet_insert_rule_ffi_js(obj, rule, index).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_style_sheet_delete_rule_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.deleteRule(index)"

///|
#cfg(target="js")
extern "js" fn css_style_sheet_replace_ffi_js(
  obj : JsValue,
  text : JsValue,
) -> JsValue = "(obj, text) => obj.replace(text)"

///|
#cfg(target="js")
fn css_style_sheet_replace_ffi(
  obj : JsValue,
  text : JsValue,
) -> JsPromise[CSSStyleSheet] {
  css_style_sheet_replace_ffi_js(obj, text).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_style_sheet_replace_sync_ffi(
  obj : JsValue,
  text : JsValue,
) -> Unit = "(obj, text) => obj.replaceSync(text)"

///|
#cfg(target="js")
extern "js" fn css_style_sheet_rules_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.rules"

///|
#cfg(target="js")
fn css_style_sheet_rules_ffi(obj : JsValue) -> CSSRuleList {
  css_style_sheet_rules_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_style_sheet_add_rule_ffi_js(
  obj : JsValue,
  selector : JsValue,
  style : JsValue,
  index : JsValue,
) -> JsValue = "(obj, selector, style, index) => obj.addRule(selector, style, index)"

///|
#cfg(target="js")
fn css_style_sheet_add_rule_ffi(
  obj : JsValue,
  selector : JsValue,
  style : JsValue,
  index : JsValue,
) -> Int {
  css_style_sheet_add_rule_ffi_js(obj, selector, style, index).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_style_sheet_remove_rule_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.removeRule(index)"

///|
#cfg(target="wasm-gc")
fn css_style_sheet_new_ffi(options : JsValue) -> CSSStyleSheet = "webapi_CSSStyleSheet" "new"

///|
#cfg(target="wasm-gc")
fn css_style_sheet_owner_rule_ffi(obj : JsValue) -> CSSRule = "webapi_CSSStyleSheet" "get_ownerRule"

///|
#cfg(target="wasm-gc")
fn css_style_sheet_css_rules_ffi(obj : JsValue) -> CSSRuleList = "webapi_CSSStyleSheet" "get_cssRules"

///|
#cfg(target="wasm-gc")
fn css_style_sheet_insert_rule_ffi(
  obj : JsValue,
  rule : JsValue,
  index : JsValue,
) -> UInt = "webapi_CSSStyleSheet" "insertRule"

///|
#cfg(target="wasm-gc")
fn css_style_sheet_delete_rule_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_CSSStyleSheet" "deleteRule"

///|
#cfg(target="wasm-gc")
fn css_style_sheet_replace_ffi_wasm(obj : JsValue, text : JsValue) -> JsValue = "webapi_CSSStyleSheet" "replace"

///|
#cfg(target="wasm-gc")
fn css_style_sheet_replace_ffi(
  obj : JsValue,
  text : JsValue,
) -> JsPromise[CSSStyleSheet] {
  css_style_sheet_replace_ffi_wasm(obj, text).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn css_style_sheet_replace_sync_ffi(obj : JsValue, text : JsValue) -> Unit = "webapi_CSSStyleSheet" "replaceSync"

///|
#cfg(target="wasm-gc")
fn css_style_sheet_rules_ffi(obj : JsValue) -> CSSRuleList = "webapi_CSSStyleSheet" "get_rules"

///|
#cfg(target="wasm-gc")
fn css_style_sheet_add_rule_ffi(
  obj : JsValue,
  selector : JsValue,
  style : JsValue,
  index : JsValue,
) -> Int = "webapi_CSSStyleSheet" "addRule"

///|
#cfg(target="wasm-gc")
fn css_style_sheet_remove_rule_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_CSSStyleSheet" "removeRule"
