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
fn overload_candidate_name(
  base_name : String,
  args : Array[@parser.Argument],
  overload_index : Int,
) -> String {
  let names = overload_arg_names(args)

  // Common options overloads
  if base_name == "post_message" && has_name(names, "options") {
    return "post_message_with_options"
  }

  // Coordinate overloads for scrolling
  if (
      base_name == "scroll" ||
      base_name == "scroll_to" ||
      base_name == "scroll_by"
    ) &&
    exact_names(names, ["x", "y"]) {
    return "\{base_name}_xy"
  }

  // createImageBitmap(image, sx, sy, sw, sh, options?)
  if base_name == "create_image_bitmap" &&
    has_all_names(names, ["sx", "sy", "sw", "sh"]) {
    return "create_image_bitmap_cropped"
  }

  // Canvas/offscreen canvas overloads
  if base_name == "set_transform" && exact_names(names, ["transform"]) {
    return "set_transform_matrix"
  }
  if (base_name == "fill" || base_name == "stroke" || base_name == "clip") &&
    names.length() > 0 &&
    names[0] == "path" {
    return "\{base_name}_path"
  }
  if base_name == "is_point_in_path" && names.length() > 0 && names[0] == "path" {
    return "is_point_in_path_with_path"
  }
  if base_name == "is_point_in_stroke" &&
    names.length() > 0 &&
    names[0] == "path" {
    return "is_point_in_stroke_with_path"
  }
  if base_name == "draw_focus_if_needed" &&
    names.length() > 0 &&
    names[0] == "path" {
    return "draw_focus_if_needed_path"
  }
  if base_name == "draw_image" &&
    exact_names(names, ["image", "dx", "dy", "dw", "dh"]) {
    return "draw_image_scaled"
  }
  if base_name == "draw_image" &&
    exact_names(names, ["image", "sx", "sy", "sw", "sh", "dx", "dy", "dw", "dh"]) {
    return "draw_image_cropped"
  }
  if base_name == "create_image_data" &&
    names.length() > 0 &&
    names[0] == "image_data" {
    return "create_image_data_from"
  }
  if base_name == "put_image_data" && has_name(names, "dirty_x") {
    return "put_image_data_dirty_rect"
  }

  // Open overloads
  if base_name == "open" &&
    (
      has_name(names, "async_") ||
      has_name(names, "username") ||
      has_name(names, "password")
    ) {
    return "open_with_credentials"
  }
  if base_name == "open" && exact_names(names, ["url", "name", "features"]) {
    return "open_window"
  }
  if base_name == "alert" && exact_names(names, ["message"]) {
    return "alert_with_message"
  }

  // Collection/string/blob overloads
  if base_name == "get" && exact_names(names, ["name"]) {
    return "get_by_name"
  }
  if base_name == "append" && has_name(names, "blob_value") {
    return "append_blob"
  }
  if base_name == "set" && has_name(names, "blob_value") {
    return "set_blob"
  }
  if base_name == "add" && exact_names(names, ["data"]) {
    return "add_file"
  }
  if base_name == "remove" && exact_names(names, ["index"]) {
    return "remove_at"
  }
  if base_name == "set_range_text" &&
    has_name(names, "start") &&
    has_name(names, "end") {
    return "set_range_text_in_range"
  }

  // Response/body naming
  if base_name == "json" && names.length() == 0 {
    return "json_body"
  }

  // Constructors
  if base_name == "new" && has_name(names, "data") && has_name(names, "sw") {
    return "new_from_array"
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
