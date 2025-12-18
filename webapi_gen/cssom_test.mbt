///|
test "parse cssom snippet" {
  let idl =
    #|[Exposed=Window]
    #|interface MediaList {
    #|  stringifier attribute [LegacyNullToEmptyString] CSSOMString mediaText;
    #|  readonly attribute unsigned long length;
    #|  getter CSSOMString? item(unsigned long index);
    #|  undefined appendMedium(CSSOMString medium);
    #|};
  let result = @parser.parse(idl)
  inspect(result.length() > 0, content="true")
}

///|
test "parse PutForwards attribute" {
  let idl =
    #|[Exposed=Window]
    #|interface StyleSheet {
    #|  [SameObject, PutForwards=mediaText] readonly attribute MediaList media;
    #|};
  let result = @parser.parse(idl)
  inspect(result.length() > 0, content="true")
}

///|
test "parse union type attribute" {
  let idl =
    #|[Exposed=Window]
    #|interface StyleSheet {
    #|  readonly attribute (Element or ProcessingInstruction)? ownerNode;
    #|};
  let result = @parser.parse(idl)
  inspect(result.length() > 0, content="true")
}

///|
test "parse dictionary with null default" {
  let idl =
    #|dictionary CSSStyleSheetInit {
    #|  DOMString baseURL = null;
    #|  (MediaList or DOMString) media = "";
    #|  boolean disabled = false;
    #|};
  let result = @parser.parse(idl)
  inspect(result.length() > 0, content="true")
}

///|
test "parse cssom.idl file" {
  let result = @parser.parse_file("../node_modules/@webref/idl/cssom.idl")
  inspect(result.length() > 0, content="true")
}

///|
test "parse cssom-view.idl file" {
  let result = @parser.parse_file("../node_modules/@webref/idl/cssom-view.idl")
  inspect(result.length() > 0, content="true")
}
