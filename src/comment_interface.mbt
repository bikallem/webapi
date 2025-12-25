// Do not edit. This file is generated.
// MoonBit type: Comment
// Specifications: dom.idl

///|
#external
pub type Comment

///|
pub impl TJsValue for Comment with to_js(self : Comment) -> JsValue = "%identity"

///|
pub fn[T : TComment] Comment::into(self : Comment) -> T = "%identity"

///|
pub impl TComment for Comment

///|
pub impl TCharacterData for Comment

///|
pub impl TNode for Comment

///|
pub impl TEventTarget for Comment

///|
extern "js" fn comment_new_ffi(data : JsValue) -> Comment = "(data) => new Comment(data)"

///|
pub fn Comment::new(data? : String = "") -> Comment {
  comment_new_ffi(TJsValue::to_js(data))
}

///|
pub trait TComment: TCharacterData {}
