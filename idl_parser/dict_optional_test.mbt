///|
test "parse dictionary with optional fields" {
  let content = "dictionary Test { optional boolean flag; };"
  let defs = @idl_parser.parse(content)
  inspect(defs.length(), content="1")
}
