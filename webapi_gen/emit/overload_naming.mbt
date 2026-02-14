///|
priv enum ArgMatch {
  HasArg(String)
  HasAnyArg(Array[String])
  HasAllArgs(Array[String])
  ExactArgs(Array[String])
  FirstArg(String)
  NoArgs
}

///|
priv enum OverloadName {
  Literal(String)
  BaseSuffix(String)
}

///|
priv struct OverloadRule {
  base_names : Array[String]
  condition : ArgMatch
  name : OverloadName
}

///|
let overload_rules : Array[OverloadRule] = [
  // Common options overloads
  {
    base_names: ["post_message"],
    condition: HasArg("options"),
    name: Literal("post_message_with_options"),
  },
  // Coordinate overloads for scrolling
  {
    base_names: ["scroll", "scroll_to", "scroll_by"],
    condition: ExactArgs(["x", "y"]),
    name: BaseSuffix("_xy"),
  },
  // createImageBitmap(image, sx, sy, sw, sh, options?)
  {
    base_names: ["create_image_bitmap"],
    condition: HasAllArgs(["sx", "sy", "sw", "sh"]),
    name: Literal("create_image_bitmap_cropped"),
  },
  // Canvas/offscreen canvas overloads
  {
    base_names: ["set_transform"],
    condition: ExactArgs(["transform"]),
    name: Literal("set_transform_matrix"),
  },
  {
    base_names: ["fill", "stroke", "clip"],
    condition: FirstArg("path"),
    name: BaseSuffix("_path"),
  },
  {
    base_names: ["is_point_in_path"],
    condition: FirstArg("path"),
    name: Literal("is_point_in_path_with_path"),
  },
  {
    base_names: ["is_point_in_stroke"],
    condition: FirstArg("path"),
    name: Literal("is_point_in_stroke_with_path"),
  },
  {
    base_names: ["draw_focus_if_needed"],
    condition: FirstArg("path"),
    name: Literal("draw_focus_if_needed_path"),
  },
  {
    base_names: ["draw_image"],
    condition: ExactArgs(["image", "dx", "dy", "dw", "dh"]),
    name: Literal("draw_image_scaled"),
  },
  {
    base_names: ["draw_image"],
    condition: ExactArgs([
      "image", "sx", "sy", "sw", "sh", "dx", "dy", "dw", "dh",
    ]),
    name: Literal("draw_image_cropped"),
  },
  {
    base_names: ["create_image_data"],
    condition: FirstArg("image_data"),
    name: Literal("create_image_data_from"),
  },
  {
    base_names: ["put_image_data"],
    condition: HasArg("dirty_x"),
    name: Literal("put_image_data_dirty_rect"),
  },
  // Open overloads
  {
    base_names: ["open"],
    condition: HasAnyArg(["async_", "username", "password"]),
    name: Literal("open_with_credentials"),
  },
  {
    base_names: ["open"],
    condition: ExactArgs(["url", "name", "features"]),
    name: Literal("open_window"),
  },
  {
    base_names: ["alert"],
    condition: ExactArgs(["message"]),
    name: Literal("alert_with_message"),
  },
  // Collection/string/blob overloads
  {
    base_names: ["get"],
    condition: ExactArgs(["name"]),
    name: Literal("get_by_name"),
  },
  {
    base_names: ["append"],
    condition: HasArg("blob_value"),
    name: Literal("append_blob"),
  },
  {
    base_names: ["set"],
    condition: HasArg("blob_value"),
    name: Literal("set_blob"),
  },
  {
    base_names: ["add"],
    condition: ExactArgs(["data"]),
    name: Literal("add_file"),
  },
  {
    base_names: ["remove"],
    condition: ExactArgs(["index"]),
    name: Literal("remove_at"),
  },
  {
    base_names: ["set_range_text"],
    condition: HasAllArgs(["start", "end"]),
    name: Literal("set_range_text_in_range"),
  },
  // Response/body naming
  { base_names: ["json"], condition: NoArgs, name: Literal("json_body") },
  // Constructors
  {
    base_names: ["new"],
    condition: HasAllArgs(["data", "sw"]),
    name: Literal("new_from_array"),
  },
]

///|
fn overload_arg_names(args : Array[@parser.Argument]) -> Array[String] {
  args.map(arg => @type_mapping.safe_identifier(arg.name))
}

///|
fn has_name(names : Array[String], target : String) -> Bool {
  for name in names {
    if name == target {
      return true
    }
  }
  false
}

///|
fn has_all_names(names : Array[String], required : Array[String]) -> Bool {
  for req in required {
    if !has_name(names, req) {
      return false
    }
  }
  true
}

///|
fn exact_names(names : Array[String], required : Array[String]) -> Bool {
  if names.length() != required.length() {
    return false
  }
  for i = 0; i < names.length(); i = i + 1 {
    if names[i] != required[i] {
      return false
    }
  }
  true
}

///|
fn match_condition(names : Array[String], condition : ArgMatch) -> Bool {
  match condition {
    HasArg(target) => has_name(names, target)
    HasAnyArg(targets) => {
      for t in targets {
        if has_name(names, t) {
          return true
        }
      }
      false
    }
    HasAllArgs(required) => has_all_names(names, required)
    ExactArgs(required) => exact_names(names, required)
    FirstArg(target) => names.length() > 0 && names[0] == target
    NoArgs => names.length() == 0
  }
}

///|
fn resolve_name(base_name : String, name : OverloadName) -> String {
  match name {
    Literal(s) => s
    BaseSuffix(suffix) => "\{base_name}\{suffix}"
  }
}

///|
fn overload_candidate_name(
  base_name : String,
  args : Array[@parser.Argument],
  overload_index : Int,
) -> String {
  let names = overload_arg_names(args)
  for rule in overload_rules {
    if has_name(rule.base_names, base_name) &&
      match_condition(names, rule.condition) {
      return resolve_name(base_name, rule.name)
    }
  }
  "\{base_name}_\{overload_index}"
}

///|
fn next_overload_name(
  base_name : String,
  args : Array[@parser.Argument],
  method_counter : Map[String, Int],
  used_names : @hashset.HashSet[String],
) -> String {
  let base_key = @type_mapping.safe_identifier(base_name)
  let overload_index = match method_counter.get(base_key) {
    None => {
      method_counter[base_key] = 1
      1
    }
    Some(count) => {
      let next = count + 1
      method_counter[base_key] = next
      next
    }
  }
  if overload_index == 1 {
    used_names.add(base_name)
    base_name
  } else {
    let candidate = overload_candidate_name(base_key, args, overload_index)
    if candidate == base_name || used_names.contains(candidate) {
      let fallback = "\{base_name}_\{overload_index}"
      used_names.add(fallback)
      fallback
    } else {
      used_names.add(candidate)
      candidate
    }
  }
}
