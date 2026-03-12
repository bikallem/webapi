// Do not edit. This file is generated.
// MoonBit type: CSSStyleSheet
// Specifications: cssom.idl

/// [CSSStyleSheet](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet)
#external
pub type CSSStyleSheet

pub impl TJsValue for CSSStyleSheet with to_js(self: CSSStyleSheet) -> JsValue = "%identity"

pub impl FromJsAny for CSSStyleSheet with from_js_any(value : JsAny) -> CSSStyleSheet = "%identity"

pub fn[T: TCSSStyleSheet] CSSStyleSheet::into(self : CSSStyleSheet) -> T = "%identity"

pub impl TCSSStyleSheet for CSSStyleSheet

pub impl TStyleSheet for CSSStyleSheet

pub fn CSSStyleSheet::new(options? : CSSStyleSheetInit) -> CSSStyleSheet {
  css_style_sheet_new_ffi(opt_to_js(options))
}

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

/// [CSSStyleSheet.ownerRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/ownerRule)
impl TCSSStyleSheet with owner_rule(self : Self) -> CSSRule {
  css_style_sheet_owner_rule_ffi(TJsValue::to_js(self))
}

/// [CSSStyleSheet.cssRules](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/cssRules)
impl TCSSStyleSheet with css_rules(self : Self) -> CSSRuleList {
  css_style_sheet_css_rules_ffi(TJsValue::to_js(self))
}

/// [CSSStyleSheet.insertRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/insertRule)
impl TCSSStyleSheet with insert_rule(self : Self, 
rule : CSSOMString, 
index? : UInt) -> UInt {
  css_style_sheet_insert_rule_ffi(TJsValue::to_js(self), TJsValue::to_js(rule), opt_to_js(index))
}

/// [CSSStyleSheet.deleteRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/deleteRule)
impl TCSSStyleSheet with delete_rule(self : Self, 
index : UInt) -> Unit {
  css_style_sheet_delete_rule_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

/// [CSSStyleSheet.replace](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/replace)
impl TCSSStyleSheet with replace(self : Self, 
text : String) -> JsPromise[CSSStyleSheet] {
  css_style_sheet_replace_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

/// [CSSStyleSheet.replaceSync](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/replaceSync)
impl TCSSStyleSheet with replace_sync(self : Self, 
text : String) -> Unit {
  css_style_sheet_replace_sync_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

/// [CSSStyleSheet.rules](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/rules)
impl TCSSStyleSheet with rules(self : Self) -> CSSRuleList {
  css_style_sheet_rules_ffi(TJsValue::to_js(self))
}

/// [CSSStyleSheet.addRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/addRule)
impl TCSSStyleSheet with add_rule(self : Self, 
selector? : String, 
style? : String, 
index? : UInt) -> Int {
  css_style_sheet_add_rule_ffi(TJsValue::to_js(self), opt_to_js(selector), opt_to_js(style), opt_to_js(index))
}

/// [CSSStyleSheet.removeRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet/removeRule)
impl TCSSStyleSheet with remove_rule(self : Self, 
index? : UInt) -> Unit {
  css_style_sheet_remove_rule_ffi(TJsValue::to_js(self), opt_to_js(index))
}