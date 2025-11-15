///|
/// Test attribute parsing

///|
test "parse simple attribute" {
  let content = "interface Test { readonly attribute DOMString myattr; };"
  let defs = @idl_parser.parse(content)
  inspect(defs.length(), content="1")
}

///|
test "parse writable attribute" {
  let content = "interface Test { attribute int count; };"
  let defs = @idl_parser.parse(content)
  inspect(defs.length(), content="1")
}
