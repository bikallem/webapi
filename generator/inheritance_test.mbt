///|
/// Test inheritance resolver basic functionality

///|
test "resolve_inheritance_order handles empty array" {
  let empty : Array[@idl_parser.Definition] = []
  let sorted = resolve_inheritance_order(empty)
  inspect(sorted.length(), content="0")
}

///|
test "resolve_inheritance_order preserves array length" {
  // Parse EventTarget.webidl which has no inheritance
  let definitions = @idl_parser.parse("interface EventTarget { }")
  let sorted = resolve_inheritance_order(definitions)
  inspect(sorted.length() == definitions.length(), content="true")
}
