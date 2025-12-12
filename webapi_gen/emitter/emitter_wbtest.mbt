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
test "ffi_module_name generates correct module names" {
  inspect(ffi_module_name("Element"), content="webapi_Element")
  inspect(ffi_module_name("Document"), content="webapi_Document")
  inspect(ffi_module_name("HTMLDivElement"), content="webapi_HTMLDivElement")
}

///|
test "map_idl_type handles primitive types" {
  inspect(to_mbt_type_string(Boolean), content="Bool")
  inspect(to_mbt_type_string(Long), content="Int")
  inspect(to_mbt_type_string(UnsignedLong), content="UInt")
  inspect(to_mbt_type_string(Double), content="Double")
  inspect(to_mbt_type_string(Undefined), content="Unit")
}

///|
test "map_idl_type handles string types" {
  inspect(to_mbt_type_string(DOMString), content="String")
  inspect(to_mbt_type_string(USVString), content="String")
  inspect(to_mbt_type_string(ByteString), content="String")
}

///|
test "map_idl_type handles parameterized types" {
  inspect(to_mbt_type_string(Nullable(DOMString)), content="String")
  inspect(to_mbt_type_string(Sequence(Long)), content="Array[Int]")
  inspect(to_mbt_type_string(Promise(Undefined)), content="JsPromise[Unit]")
  // inspect(map_idl_type(Record(DOMString, Long)), content="Map[String, Int]")
}

///|
test "map_idl_type handles named types" {
  inspect(to_mbt_type_string(Identifier("Element")), content="Element")
  inspect(to_mbt_type_string(Identifier("EventInit")), content="EventInit")
}

///|
test "map_idl_type handles union types" {
  inspect(
    to_mbt_type_string(
      Union([
        { extended_attributes: [], type_: DOMString },
        { extended_attributes: [], type_: Long },
      ]),
    ),
    content="JsValue",
  )
}

///|
test "enum_value_to_variant converts enum values" {
  inspect(enum_value_to_variant("auto"), content="Auto")
  inspect(enum_value_to_variant("no-repeat"), content="NoRepeat")
  inspect(enum_value_to_variant("ltr"), content="Ltr")
  inspect(enum_value_to_variant("smooth"), content="Smooth")
}

///|
test "safe_identifier handles keywords and casing" {
  inspect(safe_identifier("type"), content="type_")
  inspect(safe_identifier("match"), content="match_")
  inspect(safe_identifier("getElementById"), content="get_element_by_id")
  inspect(safe_identifier("appendChild"), content="append_child")
}
