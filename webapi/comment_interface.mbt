// Do not edit. This file is generated.
// MoonBit type: Comment
// Specifications: dom.idl

///|
/// [Comment](https://developer.mozilla.org/en-US/docs/Web/API/Comment)
#external
pub type Comment

///|
pub impl TJsValue for Comment with to_js(self : Comment) -> JsValue = "%identity"

///|
pub impl FromJsAny for Comment with from_js_any(value : JsAny) -> Comment = "%identity"

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
pub fn Comment::new(data? : String) -> Comment {
  comment_new_ffi(opt_to_js(data))
}

///|
/// [Comment](https://developer.mozilla.org/en-US/docs/Web/API/Comment) interface.
pub trait TComment: TCharacterData {}

///|
#cfg(target="js")
extern "js" fn comment_new_ffi(data : JsValue) -> Comment = "(data) => new Comment(data)"

///|
#cfg(target="wasm-gc")
fn comment_new_ffi(data : JsValue) -> Comment = "webapi_Comment" "new"
