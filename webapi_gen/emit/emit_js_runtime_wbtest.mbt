///|
fn make_arg(
  name : String,
  type_ : @parser.Type,
  optional? : Bool = false,
  variadic? : Bool = false,
) -> @parser.Argument {
  {
    extended_attributes: [],
    type_: { extended_attributes: [], type_ },
    name,
    optional,
    variadic,
    default_value: None,
  }
}

///|
test "js_safe escapes reserved keywords" {
  inspect(js_safe("class"), content="_class")
  inspect(js_safe("delete"), content="_delete")
  inspect(js_safe("import"), content="_import")
  inspect(js_safe("yield"), content="_yield")
  inspect(js_safe("arguments"), content="_arguments")
  inspect(js_safe("eval"), content="_eval")
}

///|
test "js_safe passes through non-reserved names" {
  inspect(js_safe("name"), content="name")
  inspect(js_safe("value"), content="value")
  inspect(js_safe("element"), content="element")
}

///|
test "is_bigint_type detects bigint types" {
  inspect(is_bigint_type(@parser.Type::LongLong), content="true")
  inspect(is_bigint_type(@parser.Type::UnsignedLongLong), content="true")
  inspect(is_bigint_type(@parser.Type::Bigint), content="true")
}

///|
test "is_bigint_type detects nullable bigint types" {
  inspect(
    is_bigint_type(@parser.Type::Nullable(@parser.Type::LongLong)),
    content="true",
  )
}

///|
test "is_bigint_type rejects non-bigint types" {
  inspect(is_bigint_type(@parser.Type::Long), content="false")
  inspect(is_bigint_type(@parser.Type::Double), content="false")
  inspect(is_bigint_type(@parser.Type::DOMString), content="false")
}

///|
test "needs_js_quoting detects hyphens" {
  inspect(needs_js_quoting("background-color"), content="true")
  inspect(needs_js_quoting("font-size"), content="true")
}

///|
test "needs_js_quoting passes normal names" {
  inspect(needs_js_quoting("innerHTML"), content="false")
  inspect(needs_js_quoting("className"), content="false")
}

///|
test "emit_js_getter instance attribute" {
  inspect(
    emit_js_getter("innerHTML"),
    content="    get_innerHTML: (obj) => obj.innerHTML",
  )
}

///|
test "emit_js_getter static attribute" {
  inspect(
    emit_js_getter("length", is_static=true, interface_name="NodeList"),
    content="    get_length: () => NodeList.length",
  )
}

///|
test "emit_js_getter with bigint" {
  inspect(
    emit_js_getter("version", is_bigint=true),
    content="    get_version: (obj) => BigInt(obj.version)",
  )
}

///|
test "emit_js_getter with hyphen name needs quoting" {
  let expected =
    #|    "get_background-color": (obj) => obj["background-color"]
  inspect(emit_js_getter("background-color"), content=expected)
}

///|
test "emit_js_setter instance attribute" {
  inspect(
    emit_js_setter("innerHTML"),
    content="    set_innerHTML: (obj, value) => { obj.innerHTML = value; }",
  )
}

///|
test "emit_js_setter static attribute" {
  inspect(
    emit_js_setter("title", is_static=true, interface_name="Document"),
    content="    set_title: (value) => { Document.title = value; }",
  )
}

///|
test "emit_js_setter with hyphen name needs quoting" {
  let expected =
    #|    "set_background-color": (obj, value) => { obj["background-color"] = value; }
  inspect(emit_js_setter("background-color"), content=expected)
}

///|
test "emit_js_method instance with no args" {
  let args : Array[@parser.Argument] = []
  inspect(
    emit_js_method("click", "click", args, false),
    content="    click: (obj) => obj.click()",
  )
}

///|
test "emit_js_method instance with args" {
  let args = [make_arg("name", @parser.Type::DOMString)]
  inspect(
    emit_js_method("getAttribute", "getAttribute", args, false),
    content="    getAttribute: (obj, name) => obj.getAttribute(name)",
  )
}

///|
test "emit_js_method static" {
  let args = [make_arg("url", @parser.Type::DOMString)]
  inspect(
    emit_js_method("create", "create", args, true, interface_name="URL"),
    content="    create: (url) => URL.create(url)",
  )
}

///|
test "emit_js_method with bigint return" {
  let args : Array[@parser.Argument] = []
  inspect(
    emit_js_method("getVersion", "getVersion", args, false, is_bigint=true),
    content="    getVersion: (obj) => BigInt(obj.getVersion())",
  )
}

///|
test "emit_js_method with variadic arg" {
  let args = [make_arg("data", @parser.Type::Any, variadic=true)]
  inspect(
    emit_js_method("log", "log", args, false),
    content="    log: (obj, data) => obj.log(...data)",
  )
}

///|
test "emit_js_method with reserved keyword arg" {
  let args = [make_arg("class", @parser.Type::DOMString)]
  inspect(
    emit_js_method("add", "add", args, false),
    content="    add: (obj, _class) => obj.add(_class)",
  )
}

///|
test "emit_js_constructor with no args" {
  let args : Array[@parser.Argument] = []
  inspect(
    emit_js_constructor("new", "Event", args),
    content="    new: () => new Event()",
  )
}

///|
test "emit_js_constructor with args" {
  let args = [
    make_arg("type", @parser.Type::DOMString),
    make_arg("options", @parser.Type::DOMString, optional=true),
  ]
  inspect(
    emit_js_constructor("new", "Event", args),
    content="    new: (type_, options) => new Event(type_, options)",
  )
}

///|
test "emit_js_special_operation getter" {
  let op : @parser.SpecialOperationMember = {
    name: None,
    special: Getter,
    return_type: @parser.Type::Any,
    arguments: [make_arg("index", @parser.Type::UnsignedLong)],
  }
  inspect(
    emit_js_special_operation("get", op),
    content="    get: (obj, index) => obj[index]",
  )
}

///|
test "emit_js_special_operation setter" {
  let op : @parser.SpecialOperationMember = {
    name: None,
    special: Setter,
    return_type: @parser.Type::Undefined,
    arguments: [
      make_arg("index", @parser.Type::UnsignedLong),
      make_arg("value", @parser.Type::Any),
    ],
  }
  inspect(
    emit_js_special_operation("set", op),
    content="    set: (obj, index, value) => { obj[index] = value; }",
  )
}

///|
test "emit_js_special_operation deleter" {
  let op : @parser.SpecialOperationMember = {
    name: None,
    special: Deleter,
    return_type: @parser.Type::Undefined,
    arguments: [make_arg("key", @parser.Type::DOMString)],
  }
  inspect(
    emit_js_special_operation("delete_", op),
    content="    delete_: (obj, key) => { delete obj[key]; }",
  )
}

///|
test "emit_js_namespace_method" {
  let args = [make_arg("data", @parser.Type::Any, variadic=true)]
  inspect(
    emit_js_namespace_method("log", "console", "log", args),
    content="    log: (data) => console.log(...data)",
  )
}

///|
test "emit_js_namespace_method with bigint" {
  let args : Array[@parser.Argument] = []
  inspect(
    emit_js_namespace_method("now", "performance", "now", args, is_bigint=true),
    content="    now: () => BigInt(performance.now())",
  )
}

///|
test "emit_js_namespace_getter" {
  inspect(
    emit_js_namespace_getter("console", "enabled"),
    content="    get_enabled: () => console.enabled",
  )
}

///|
test "emit_js_namespace_getter with bigint" {
  inspect(
    emit_js_namespace_getter("performance", "timeOrigin", is_bigint=true),
    content="    get_timeOrigin: () => BigInt(performance.timeOrigin)",
  )
}
