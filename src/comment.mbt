// Auto-generated MoonBit bindings for Comment interface
// Do not edit manually

#external
pub type Comment

pub impl TJsValue for Comment with to_js(self: Comment) -> JsValue = "%identity"


pub fn[T: TComment] Comment::into(self : Comment) -> T = "%identity"
pub impl TComment for Comment

pub fn Comment::new(data? : String) -> Comment = "webapi_Comment" "new"

pub trait TComment: TJsValue + TTCharacterData {
}