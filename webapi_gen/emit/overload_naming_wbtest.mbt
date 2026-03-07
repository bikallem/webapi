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
  let namer = OverloadNamer::new()
  let name1 = namer.next("fill", [mk_arg("fillRule")])
  let name2 = namer.next(
    "fill",
    [mk_arg("path"), mk_arg("fillRule", optional=true)],
  )
  inspect(name1, content="fill")
  inspect(name2, content="fill_path")
}

///|
test "next_overload_name uses semantic name for coordinate overloads" {
  let namer = OverloadNamer::new()
  let _ = namer.next("scroll", [mk_arg("options", optional=true)])
  let name2 = namer.next(
    "scroll",
    [mk_arg("x", type_=@parser.Double), mk_arg("y", type_=@parser.Double)],
  )
  inspect(name2, content="scroll_xy")
}

///|
test "next_overload_name distinguishes open overloads" {
  let namer = OverloadNamer::new()
  let _ = namer.next("open", [mk_arg("method"), mk_arg("url")])
  let xhr_name = namer.next(
    "open",
    [
      mk_arg("method_"),
      mk_arg("url"),
      mk_arg("async_", type_=@parser.Boolean),
      mk_arg("username", optional=true),
      mk_arg("password", optional=true),
    ],
  )
  inspect(xhr_name, content="open_with_credentials")
}

///|
test "next_overload_name distinguishes alert overloads" {
  let namer = OverloadNamer::new()
  let _ = namer.next("alert", [])
  let alert_with_message = namer.next("alert", [mk_arg("message")])
  inspect(alert_with_message, content="alert_with_message")
}

///|
test "next_overload_name falls back when semantic candidate collides" {
  let namer : OverloadNamer = {
    counter: {},
    used_names: @hashset.from_array(["post_message_with_options"]),
  }
  let _ = namer.next(
    "post_message",
    [mk_arg("message"), mk_arg("transfer", type_=@parser.Sequence(@parser.Any))],
  )
  let name2 = namer.next(
    "post_message",
    [mk_arg("message"), mk_arg("options", optional=true)],
  )
  inspect(name2, content="post_message_2")
}
