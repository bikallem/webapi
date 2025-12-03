// Auto-generated MoonBit bindings for Navigator

// Do not edit manually

//
// WebIDL Interface:
// partial interface Navigator {
//   [SameObject] readonly attribute UserActivation userActivation;
// };
// 
// [Exposed=Window]
// interface Navigator {
//   // objects implementing this interface also implement the interfaces given below
// };

///|
#external
pub type Navigator

///|
pub trait TNavigator: TJsValue {
  user_activation(self : Self) -> JsValue = _
}

///|
pub impl TNavigator for Navigator

///|
pub impl TJsValue for Navigator with to_js(self : Navigator) -> JsValue = "%identity"

///|
pub fn Navigator::null() -> Navigator = "JsValue" "null"

///|
pub fn Navigator::is_null(self : Navigator) -> Bool = "JsValue" "isNull"

///|
fn navigator_user_activation_ffi(obj : JsValue) -> JsValue = "webapi_Navigator" "userActivation"

///|
impl TNavigator with user_activation(self : Self) -> JsValue {
  navigator_user_activation_ffi(self.to_js())
}
