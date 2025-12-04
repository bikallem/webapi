// Auto-generated MoonBit bindings for Comment

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface Comment : CharacterData {
//   constructor(optional DOMString data = "");
// };

///|
#external
pub type Comment

///|
pub trait TComment: TJsValue + TCharacterData {}

///|
pub impl TEventTarget for Comment

///|
pub impl TNode for Comment

///|
pub impl TCharacterData for Comment

///|
pub impl TComment for Comment

///|
pub impl TJsValue for Comment with to_js(self : Comment) -> JsValue = "%identity"

///|
fn comment_new_ffi(data : JsValue) -> Comment = "webapi_Comment" "new"

///|
pub fn Comment::new(data? : String = "") -> Comment {
  comment_new_ffi(TJsValue::to_js(data))
}
