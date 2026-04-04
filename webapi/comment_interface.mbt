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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TComment] Comment::into(self : Comment) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TComment] Comment::unsafe_into(self : Comment) -> T = "%identity"

///|
pub impl HasConstructor for Comment with constructor_name() {
  "Comment"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TComment + HasConstructor] Comment::try_into(self : Comment) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
