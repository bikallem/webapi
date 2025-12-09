///|
test "to_snake_case converts PascalCase" {
  inspect(to_snake_case("HTMLElement"), content="h_t_m_l_element")
  inspect(to_snake_case("getElementById"), content="get_element_by_id")
  inspect(to_snake_case("DOMString"), content="d_o_m_string")
  inspect(to_snake_case("addEventListener"), content="add_event_listener")
}

///|
test "to_snake_case handles already snake_case" {
  inspect(to_snake_case("already_snake"), content="already_snake")
  inspect(to_snake_case("lowercase"), content="lowercase")
}

///|
test "to_pascal_case converts snake_case" {
  inspect(to_pascal_case("html_element"), content="HtmlElement")
  inspect(to_pascal_case("get_element_by_id"), content="GetElementById")
  inspect(to_pascal_case("dom_string"), content="DomString")
}

///|
test "to_pascal_case handles hyphenated strings" {
  inspect(to_pascal_case("no-repeat"), content="NoRepeat")
  inspect(to_pascal_case("read-write"), content="ReadWrite")
}

///|
test "to_pascal_case handles already PascalCase" {
  inspect(to_pascal_case("HTMLElement"), content="HTMLElement")
  inspect(to_pascal_case("DOMString"), content="DOMString")
}

///|
test "escape_keyword escapes reserved words" {
  inspect(escape_keyword("fn"), content="fn_")
  inspect(escape_keyword("let"), content="let_")
  inspect(escape_keyword("type"), content="type_")
  inspect(escape_keyword("match"), content="match_")
}

///|
test "escape_keyword passes non-keywords" {
  inspect(escape_keyword("element"), content="element")
  inspect(escape_keyword("document"), content="document")
  inspect(escape_keyword("appendChild"), content="appendChild")
}

///|
test "ffi_name generates correct FFI function names" {
  inspect(
    ffi_name("Element", "getAttribute"),
    content="element_get_attribute_ffi",
  )
  inspect(
    ffi_name("Document", "getElementById"),
    content="document_get_element_by_id_ffi",
  )
  inspect(ffi_name("Node", "appendChild"), content="node_append_child_ffi")
}

///|
test "ffi_module_name generates correct module names" {
  inspect(ffi_module_name("Element"), content="webapi_Element")
  inspect(ffi_module_name("Document"), content="webapi_Document")
  inspect(ffi_module_name("HTMLDivElement"), content="webapi_HTMLDivElement")
}

///|
test "map_idl_type handles primitive types" {
  inspect(map_idl_type(Boolean), content="Bool")
  inspect(map_idl_type(Long), content="Int")
  inspect(map_idl_type(UnsignedLong), content="UInt")
  inspect(map_idl_type(Double), content="Double")
  inspect(map_idl_type(Void), content="Unit")
  inspect(map_idl_type(Undefined), content="Unit")
}

///|
test "map_idl_type handles string types" {
  inspect(map_idl_type(DOMString), content="String")
  inspect(map_idl_type(USVString), content="String")
  inspect(map_idl_type(ByteString), content="String")
}

///|
test "map_idl_type handles parameterized types" {
  inspect(map_idl_type(Nullable(DOMString)), content="String?")
  inspect(map_idl_type(Sequence(Long)), content="Array[Int]")
  inspect(map_idl_type(Promise(Void)), content="JsPromise[Unit]")
  // inspect(map_idl_type(Record(DOMString, Long)), content="Map[String, Int]")
}

///|
test "map_idl_type handles named types" {
  inspect(map_idl_type(Identifier("Element")), content="Element")
  inspect(map_idl_type(Identifier("EventInit")), content="EventInit")
  inspect(map_idl_type(Identifier("DOMString")), content="String")
  inspect(map_idl_type(Identifier("ArrayBuffer")), content="ArrayBuffer")
}

///|
test "map_idl_type handles union types" {
  inspect(map_idl_type(Union([DOMString, Long])), content="JsValue")
}

///|
test "enum_value_to_variant converts enum values" {
  inspect(enum_value_to_variant("\"auto\""), content="Auto")
  inspect(enum_value_to_variant("\"no-repeat\""), content="NoRepeat")
  inspect(enum_value_to_variant("\"ltr\""), content="Ltr")
  inspect(enum_value_to_variant("smooth"), content="Smooth")
}
