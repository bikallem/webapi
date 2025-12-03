// Auto-generated MoonBit bindings for DOMTokenList

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface DOMTokenList {
//   readonly attribute unsigned long length;
//   getter DOMString? item(unsigned long index);
//   boolean contains(DOMString token);
//   [CEReactions] undefined add(DOMString... tokens);
//   [CEReactions] undefined remove(DOMString... tokens);
//   [CEReactions] boolean toggle(DOMString token, optional boolean force);
//   [CEReactions] boolean replace(DOMString token, DOMString newToken);
//   boolean supports(DOMString token);
//   [CEReactions] stringifier attribute DOMString value;
//   iterable<DOMString>;
// };

///|
#external
pub type DOMTokenList

///|
pub trait TDOMTokenList: TJsValue {
  length(self : Self) -> Int = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
  item(self : Self, index : Int) -> String? = _
  contains(self : Self, token : String) -> Bool = _
  add(self : Self, tokens : String) -> Unit = _
  remove(self : Self, tokens : String) -> Unit = _
  toggle(self : Self, token : String, force? : Bool) -> Bool = _
  replace(self : Self, token : String, new_token : String) -> Bool = _
  supports(self : Self, token : String) -> Bool = _
}

///|
pub impl TDOMTokenList for DOMTokenList

///|
pub impl TJsValue for DOMTokenList with to_js(self : DOMTokenList) -> JsValue = "%identity"

///|
pub fn DOMTokenList::null() -> DOMTokenList = "JsValue" "null"

///|
pub fn DOMTokenList::is_null(self : DOMTokenList) -> Bool = "JsValue" "isNull"

///|
fn dom_token_list_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_DOMTokenList" "item"

///|
impl TDOMTokenList with item(self : Self, index : Int) -> String? {
  dom_token_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).as_option()
}

///|
fn dom_token_list_contains_ffi(obj : JsValue, token : JsValue) -> JsValue = "webapi_DOMTokenList" "contains"

///|
impl TDOMTokenList with contains(self : Self, token : String) -> Bool {
  dom_token_list_contains_ffi(TJsValue::to_js(self), TJsValue::to_js(token)).unsafe_cast()
}

///|
fn dom_token_list_add_ffi(obj : JsValue, tokens : JsValue) -> Unit = "webapi_DOMTokenList" "add"

///|
impl TDOMTokenList with add(self : Self, tokens : String) -> Unit {
  dom_token_list_add_ffi(TJsValue::to_js(self), TJsValue::to_js(tokens))
}

///|
fn dom_token_list_remove_ffi(obj : JsValue, tokens : JsValue) -> Unit = "webapi_DOMTokenList" "remove"

///|
impl TDOMTokenList with remove(self : Self, tokens : String) -> Unit {
  dom_token_list_remove_ffi(TJsValue::to_js(self), TJsValue::to_js(tokens))
}

///|
fn dom_token_list_toggle_ffi(
  obj : JsValue,
  token : JsValue,
  force : JsValue,
) -> JsValue = "webapi_DOMTokenList" "toggle"

///|
impl TDOMTokenList with toggle(self : Self, token : String, force? : Bool) -> Bool {
  let force_js = opt_to_js(force)
  dom_token_list_toggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(token),
    force_js,
  ).unsafe_cast()
}

///|
fn dom_token_list_replace_ffi(
  obj : JsValue,
  token : JsValue,
  new_token : JsValue,
) -> JsValue = "webapi_DOMTokenList" "replace"

///|
impl TDOMTokenList with replace(self : Self, token : String, new_token : String) -> Bool {
  dom_token_list_replace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(token),
    TJsValue::to_js(new_token),
  ).unsafe_cast()
}

///|
fn dom_token_list_supports_ffi(obj : JsValue, token : JsValue) -> JsValue = "webapi_DOMTokenList" "supports"

///|
impl TDOMTokenList with supports(self : Self, token : String) -> Bool {
  dom_token_list_supports_ffi(TJsValue::to_js(self), TJsValue::to_js(token)).unsafe_cast()
}

///|
fn dom_token_list_length_ffi(obj : JsValue) -> Int = "webapi_DOMTokenList" "length"

///|
impl TDOMTokenList with length(self : Self) -> Int {
  dom_token_list_length_ffi(self.to_js())
}

///|
fn dom_token_list_value_ffi(obj : JsValue) -> String = "webapi_DOMTokenList" "value"

///|
impl TDOMTokenList with value(self : Self) -> String {
  dom_token_list_value_ffi(self.to_js())
}

///|
fn dom_token_list_set_value_ffi(obj : JsValue, value : String) -> Unit = "webapi_DOMTokenList" "set_value"

///|
impl TDOMTokenList with set_value(self : Self, value : String) -> Unit {
  dom_token_list_set_value_ffi(self.to_js(), value)
}
