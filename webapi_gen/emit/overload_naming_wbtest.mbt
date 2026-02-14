///|
fn mk_arg(
  name : String,
  type_? : @parser.Type = @parser.DOMString,
  optional? : Bool = false,
) -> @parser.Argument {
  {
    extended_attributes: [],
    type_: { extended_attributes: [], type_ },
    name,
    optional,
    variadic: false,
    default_value: None,
  }
}

///|
test "next_overload_name uses semantic name for fill path overload" {
  let counter : Map[String, Int] = {}
  let used = @hashset.new()
  let name1 = next_overload_name("fill", [mk_arg("fillRule")], counter, used)
  let name2 = next_overload_name(
    "fill",
    [mk_arg("path"), mk_arg("fillRule", optional=true)],
    counter,
    used,
  )
  inspect(name1, content="fill")
  inspect(name2, content="fill_path")
}

///|
test "next_overload_name uses semantic name for coordinate overloads" {
  let counter : Map[String, Int] = {}
  let used = @hashset.new()
  let _ = next_overload_name(
    "scroll",
    [mk_arg("options", optional=true)],
    counter,
    used,
  )
  let name2 = next_overload_name(
    "scroll",
    [mk_arg("x", type_=@parser.Double), mk_arg("y", type_=@parser.Double)],
    counter,
    used,
  )
  inspect(name2, content="scroll_xy")
}

///|
test "next_overload_name distinguishes open overloads" {
  let counter : Map[String, Int] = {}
  let used = @hashset.new()
  let _ = next_overload_name(
    "open",
    [mk_arg("method"), mk_arg("url")],
    counter,
    used,
  )
  let xhr_name = next_overload_name(
    "open",
    [
      mk_arg("method_"),
      mk_arg("url"),
      mk_arg("async_", type_=@parser.Boolean),
      mk_arg("username", optional=true),
      mk_arg("password", optional=true),
    ],
    counter,
    used,
  )
  inspect(xhr_name, content="open_with_credentials")
}

///|
test "next_overload_name distinguishes alert overloads" {
  let counter : Map[String, Int] = {}
  let used = @hashset.new()
  let _ = next_overload_name("alert", [], counter, used)
  let alert_with_message = next_overload_name(
    "alert",
    [mk_arg("message")],
    counter,
    used,
  )
  inspect(alert_with_message, content="alert_with_message")
}

///|
test "next_overload_name falls back when semantic candidate collides" {
  let counter : Map[String, Int] = {}
  let used = @hashset.from_array(["post_message_with_options"])
  let _ = next_overload_name(
    "post_message",
    [mk_arg("message"), mk_arg("transfer", type_=@parser.Sequence(@parser.Any))],
    counter,
    used,
  )
  let name2 = next_overload_name(
    "post_message",
    [mk_arg("message"), mk_arg("options", optional=true)],
    counter,
    used,
  )
  inspect(name2, content="post_message_2")
}
