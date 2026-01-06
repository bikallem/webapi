// Do not edit. This file is generated.
// MoonBit type: CSSStyleSheet
// Specifications: cssom.idl

///|
#external
pub type CSSStyleSheet

///|
pub impl TJsValue for CSSStyleSheet with to_js(self : CSSStyleSheet) -> JsValue = "%identity"

///|
pub fn[T : TCSSStyleSheet] CSSStyleSheet::into(self : CSSStyleSheet) -> T = "%identity"

///|
pub impl TCSSStyleSheet for CSSStyleSheet

///|
pub impl TStyleSheet for CSSStyleSheet

///|
extern "js" fn css_style_sheet_new_ffi(options : JsValue) -> CSSStyleSheet = "(options) => new CSSStyleSheet(options)"

///|
pub fn CSSStyleSheet::new(
  options? : CSSStyleSheetInit = CSSStyleSheetInit::empty(),
) -> CSSStyleSheet {
  css_style_sheet_new_ffi(TJsValue::to_js(options))
}

///|
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
extern "js" fn css_style_sheet_owner_rule_ffi(obj : JsValue) -> CSSRule = "(obj) => obj.ownerRule"

///|
impl TCSSStyleSheet with owner_rule(self : Self) -> CSSRule {
  css_style_sheet_owner_rule_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_style_sheet_css_rules_ffi(obj : JsValue) -> CSSRuleList = "(obj) => obj.cssRules"

///|
impl TCSSStyleSheet with css_rules(self : Self) -> CSSRuleList {
  css_style_sheet_css_rules_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_style_sheet_insert_rule_ffi(
  obj : JsValue,
  rule : JsValue,
  index : JsValue,
) -> UInt = "(obj, rule, index) => obj.insertRule(rule, index)"

///|
impl TCSSStyleSheet with insert_rule(
  self : Self,
  rule : CSSOMString,
  index? : UInt = (0 : UInt),
) -> UInt {
  css_style_sheet_insert_rule_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rule),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn css_style_sheet_delete_rule_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.deleteRule(index)"

///|
impl TCSSStyleSheet with delete_rule(self : Self, index : UInt) -> Unit {
  css_style_sheet_delete_rule_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
extern "js" fn css_style_sheet_replace_ffi(
  obj : JsValue,
  text : JsValue,
) -> JsPromise[CSSStyleSheet] = "(obj, text) => obj.replace(text)"

///|
impl TCSSStyleSheet with replace(self : Self, text : String) -> JsPromise[
  CSSStyleSheet,
] {
  css_style_sheet_replace_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

///|
extern "js" fn css_style_sheet_replace_sync_ffi(
  obj : JsValue,
  text : JsValue,
) -> Unit = "(obj, text) => obj.replaceSync(text)"

///|
impl TCSSStyleSheet with replace_sync(self : Self, text : String) -> Unit {
  css_style_sheet_replace_sync_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

///|
extern "js" fn css_style_sheet_rules_ffi(obj : JsValue) -> CSSRuleList = "(obj) => obj.rules"

///|
impl TCSSStyleSheet with rules(self : Self) -> CSSRuleList {
  css_style_sheet_rules_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_style_sheet_add_rule_ffi(
  obj : JsValue,
  selector : JsValue,
  style : JsValue,
  index : JsValue,
) -> Int = "(obj, selector, style, index) => obj.addRule(selector, style, index)"

///|
impl TCSSStyleSheet with add_rule(
  self : Self,
  selector? : String = "undefined",
  style? : String = "undefined",
  index? : UInt,
) -> Int {
  css_style_sheet_add_rule_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selector),
    TJsValue::to_js(style),
    opt_to_js(index),
  )
}

///|
extern "js" fn css_style_sheet_remove_rule_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.removeRule(index)"

///|
impl TCSSStyleSheet with remove_rule(self : Self, index? : UInt = (0 : UInt)) -> Unit {
  css_style_sheet_remove_rule_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}
