///|
extern "js" fn css_style_sheet_new_ffi(options : JsValue) -> CSSStyleSheet = "(options) => new CSSStyleSheet(options)"

///|
extern "js" fn css_style_sheet_owner_rule_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ownerRule"

///|
extern "js" fn css_style_sheet_css_rules_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cssRules"

///|
extern "js" fn css_style_sheet_insert_rule_ffi(
  obj : JsValue,
  rule : JsValue,
  index : JsValue,
) -> JsValue = "(obj, rule, index) => obj.insertRule(rule, index)"

///|
extern "js" fn css_style_sheet_delete_rule_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.deleteRule(index)"

///|
extern "js" fn css_style_sheet_replace_ffi(
  obj : JsValue,
  text : JsValue,
) -> JsValue = "(obj, text) => obj.replace(text)"

///|
extern "js" fn css_style_sheet_replace_sync_ffi(
  obj : JsValue,
  text : JsValue,
) -> Unit = "(obj, text) => obj.replaceSync(text)"

///|
extern "js" fn css_style_sheet_rules_ffi(obj : JsValue) -> JsValue = "(obj) => obj.rules"

///|
extern "js" fn css_style_sheet_add_rule_ffi(
  obj : JsValue,
  selector : JsValue,
  style : JsValue,
  index : JsValue,
) -> JsValue = "(obj, selector, style, index) => obj.addRule(selector, style, index)"

///|
extern "js" fn css_style_sheet_remove_rule_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.removeRule(index)"
