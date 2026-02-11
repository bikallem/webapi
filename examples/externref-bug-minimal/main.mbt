// Minimal reproduction for moonbitlang/moonbit-docs#1123
// wasm-gc: #external type + trait with supertrait → invalid wasm
//
// NO unsafe_cast, NO library dependency. Pure MoonBit.
// Trigger: converting an #external type to a trait object
// whose trait has a supertrait.

///|
type JsValue

///|
pub trait TJsValue {
  to_js(self : Self) -> JsValue
}

///|
#external
pub type Foo

///|
pub impl TJsValue for Foo with to_js(self) = "%identity"

///|
pub trait TFoo: TJsValue {
  bar(self : Self) -> Unit
}

///|
pub impl TFoo for Foo with bar(_self) {
  ()
}

///|
fn use_trait_object(obj : &TFoo) -> Unit {
  obj.bar()
}

///|
fn make_foo() -> Foo = "env" "make_foo"

///|
fn main {
  let foo = make_foo()
  // Passes #external type as trait object with supertrait — triggers the bug:
  // type error in fallthru[0] (expected anyref, got externref)
  use_trait_object(foo)
}
