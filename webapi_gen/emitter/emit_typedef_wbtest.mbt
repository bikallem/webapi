///|
fn setup_registry() -> TypeRegistry {
  let window_def = @parser.DefinitionExtendedAttributes::{
    extended_attributes: [],
    definition: Interface(@parser.InterfaceDefinition::{
      name: "Window",
      inheritance: None,
      members: [],
    }),
  }
  TypeRegistry::new([window_def])
}

///|
test "emit_typedef/primitive" {
  let type_registry = setup_registry()
  let t1 = @parser.TypedefDefinition::{ name: "MyString", type_: DOMString }
  inspect(
    emit_typedef(t1, type_registry),
    content=(
      #|// Auto-generated MoonBit bindings for MyString typedef
      #|///|
      #|pub typealias MyString = String
      #|
    ),
  )
}

///|
test "emit_typedef/nullable" {
  let type_registry = setup_registry()
  let t2 = @parser.TypedefDefinition::{
    name: "NullableInt",
    type_: Nullable(Long),
  }
  inspect(
    emit_typedef(t2, type_registry),
    content=(
      #|// Auto-generated MoonBit bindings for NullableInt typedef
      #|///|
      #|pub typealias NullableInt = Int
      #|
    ),
  )
}

///|
test "emit_typedef/interface" {
  let type_registry = setup_registry()
  let t3 = @parser.TypedefDefinition::{
    name: "WindowAlias",
    type_: Identifier("Window"),
  }
  inspect(
    emit_typedef(t3, type_registry),
    content=(
      #|// Auto-generated MoonBit bindings for WindowAlias typedef
      #|///|
      #|pub typealias WindowAlias = &TWindow
      #|
    ),
  )
}

///|
test "emit_typedef/sequence" {
  let type_registry = setup_registry()
  let t4 = @parser.TypedefDefinition::{
    name: "StringList",
    type_: Sequence(DOMString),
  }
  inspect(
    emit_typedef(t4, type_registry),
    content=(
      #|// Auto-generated MoonBit bindings for StringList typedef
      #|///|
      #|pub typealias StringList = Array[String]
      #|
    ),
  )
}

///|
test "emit_typedef/union" {
  // typedef (DOMString or Long) StringOrLong;
  let type_registry = setup_registry()
  let t_union = @parser.TypedefDefinition::{
    name: "StringOrLong",
    type_: Union([
      { extended_attributes: [], type_: DOMString },
      { extended_attributes: [], type_: Long },
    ]),
  }
  inspect(
    emit_typedef(t_union, type_registry),
    content=(
      #|// Auto-generated MoonBit bindings for StringOrLong typedef
      #|///|
      #|pub(open) trait TStringOrLong {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|///|
      #|pub fn[T : TStringOrLong] &TStringOrLong::into(self : &TStringOrLong) -> T = "%identity"
      #|
      #|///|
      #|pub impl TStringOrLong for String with to_js(self : String) -> JsValue = "%identity"
      #|
      #|///|
      #|pub impl TStringOrLong for Int with to_js(self : Int) -> JsValue = "%identity"
      #|
    ),
  )
}
