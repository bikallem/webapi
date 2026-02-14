///|
test "enum_variant converts simple string" {
  inspect(enum_variant("default"), content="Default")
}

///|
test "enum_variant converts dash-separated string" {
  inspect(enum_variant("no-referrer"), content="NoReferrer")
}

///|
test "enum_variant converts digit-prefixed string" {
  inspect(enum_variant("2d"), content="V2d")
}

///|
test "enum_variant replaces special characters with underscores" {
  inspect(enum_variant("ltr+rtl"), content=(
    #|LtrRtl
  ))
}

///|
test "enum_variant handles empty string" {
  inspect(enum_variant(""), content="Empty")
}

///|
test "EnumEmitter emits enum with multiple values" {
  let idl =
    #|enum ScrollBehavior { "auto", "instant", "smooth" };
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let emitter = EnumEmitter::{ idl: flattened, type_registry: registry }
  let (Filename(filename), emits) = emitter.emit("ScrollBehavior")
  inspect(filename, content="scroll_behavior_enum.mbt")
  let multi = mbt_code_gen_multi(emits)
  inspect(multi.shared, content=(
    
    #|// Do not edit. This file is generated.
    #|// MoonBit type: ScrollBehavior
    #|
    #|
    #|pub(all) enum ScrollBehavior {
    #|  Auto
    #|  Instant
    #|  Smooth
    #|} derive(Eq)
    #|
    #|pub impl Show for ScrollBehavior with output(self : ScrollBehavior, logger : &Logger) -> Unit {
    #|  match self {
    #|    ScrollBehavior::Auto => logger.write_string("Auto")
    #|    ScrollBehavior::Instant => logger.write_string("Instant")
    #|    ScrollBehavior::Smooth => logger.write_string("Smooth")
    #|  }
    #|}
    #|
    #|pub impl TJsValue for ScrollBehavior with to_js(self: ScrollBehavior) -> JsValue {
    #|  match self {
    #|    ScrollBehavior::Auto => TJsValue::to_js("auto")
    #|    ScrollBehavior::Instant => TJsValue::to_js("instant")
    #|    ScrollBehavior::Smooth => TJsValue::to_js("smooth")
    #|  }
    #|}
    #|
    #|pub fn ScrollBehavior::from(value: String) -> ScrollBehavior? {
    #|  match value {
    #|    "auto" => Some(ScrollBehavior::Auto)
    #|    "instant" => Some(ScrollBehavior::Instant)
    #|    "smooth" => Some(ScrollBehavior::Smooth)
    #|    _ => None
    #|  }
    #|}
    #|
    #|fn ScrollBehavior::from_unchecked(value: String) -> ScrollBehavior {
    #|  match value {
    #|    "auto" => ScrollBehavior::Auto
    #|    "instant" => ScrollBehavior::Instant
    #|    "smooth" => ScrollBehavior::Smooth
    #|    _ => abort("unknown enum value")
    #|  }
    #|}
    #|
    #|pub fn ScrollBehavior::value(self: ScrollBehavior) -> String {
    #|  let buf = StringBuilder::new()
    #|  match self {
    #|    ScrollBehavior::Auto => buf.write_string("auto")
    #|    ScrollBehavior::Instant => buf.write_string("instant")
    #|    ScrollBehavior::Smooth => buf.write_string("smooth")
    #|  }
    #|  buf.to_string()
    #|}
    #|
    #|pub impl FromJsAny for ScrollBehavior with from_js_any(value : JsAny) -> ScrollBehavior {
    #|  ScrollBehavior::from_unchecked(value)
    #|}
  ))
  inspect(multi.js_ffi)
  inspect(multi.wasm_ffi)
}

///|
test "EnumEmitter emits enum with empty string value" {
  let idl =
    #|enum SelectionDirection { "forward", "backward", "none", "" };
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let emitter = EnumEmitter::{ idl: flattened, type_registry: registry }
  let (_filename, emits) = emitter.emit("SelectionDirection")
  let multi = mbt_code_gen_multi(emits)
  inspect(multi.shared, content=(
    
    #|// Do not edit. This file is generated.
    #|// MoonBit type: SelectionDirection
    #|
    #|
    #|pub(all) enum SelectionDirection {
    #|  Forward
    #|  Backward
    #|  None
    #|  Empty
    #|} derive(Eq)
    #|
    #|pub impl Show for SelectionDirection with output(self : SelectionDirection, logger : &Logger) -> Unit {
    #|  match self {
    #|    SelectionDirection::Forward => logger.write_string("Forward")
    #|    SelectionDirection::Backward => logger.write_string("Backward")
    #|    SelectionDirection::None => logger.write_string("None")
    #|    SelectionDirection::Empty => logger.write_string("Empty")
    #|  }
    #|}
    #|
    #|pub impl TJsValue for SelectionDirection with to_js(self: SelectionDirection) -> JsValue {
    #|  match self {
    #|    SelectionDirection::Forward => TJsValue::to_js("forward")
    #|    SelectionDirection::Backward => TJsValue::to_js("backward")
    #|    SelectionDirection::None => TJsValue::to_js("none")
    #|    SelectionDirection::Empty => TJsValue::to_js("")
    #|  }
    #|}
    #|
    #|pub fn SelectionDirection::from(value: String) -> SelectionDirection? {
    #|  match value {
    #|    "forward" => Some(SelectionDirection::Forward)
    #|    "backward" => Some(SelectionDirection::Backward)
    #|    "none" => Some(SelectionDirection::None)
    #|    "" => Some(SelectionDirection::Empty)
    #|    _ => None
    #|  }
    #|}
    #|
    #|fn SelectionDirection::from_unchecked(value: String) -> SelectionDirection {
    #|  match value {
    #|    "forward" => SelectionDirection::Forward
    #|    "backward" => SelectionDirection::Backward
    #|    "none" => SelectionDirection::None
    #|    "" => SelectionDirection::Empty
    #|    _ => abort("unknown enum value")
    #|  }
    #|}
    #|
    #|pub fn SelectionDirection::value(self: SelectionDirection) -> String {
    #|  let buf = StringBuilder::new()
    #|  match self {
    #|    SelectionDirection::Forward => buf.write_string("forward")
    #|    SelectionDirection::Backward => buf.write_string("backward")
    #|    SelectionDirection::None => buf.write_string("none")
    #|    SelectionDirection::Empty => buf.write_string("")
    #|  }
    #|  buf.to_string()
    #|}
    #|
    #|pub impl FromJsAny for SelectionDirection with from_js_any(value : JsAny) -> SelectionDirection {
    #|  SelectionDirection::from_unchecked(value)
    #|}
  ))
}

///|
test "EnumEmitter emits enum with dash-separated values" {
  let idl =
    #|enum ReferrerPolicy { "no-referrer", "no-referrer-when-downgrade", "origin" };
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let emitter = EnumEmitter::{ idl: flattened, type_registry: registry }
  let (_filename, emits) = emitter.emit("ReferrerPolicy")
  let multi = mbt_code_gen_multi(emits)
  inspect(multi.shared, content=(
    
    #|// Do not edit. This file is generated.
    #|// MoonBit type: ReferrerPolicy
    #|
    #|
    #|pub(all) enum ReferrerPolicy {
    #|  NoReferrer
    #|  NoReferrerWhenDowngrade
    #|  Origin
    #|} derive(Eq)
    #|
    #|pub impl Show for ReferrerPolicy with output(self : ReferrerPolicy, logger : &Logger) -> Unit {
    #|  match self {
    #|    ReferrerPolicy::NoReferrer => logger.write_string("NoReferrer")
    #|    ReferrerPolicy::NoReferrerWhenDowngrade => logger.write_string("NoReferrerWhenDowngrade")
    #|    ReferrerPolicy::Origin => logger.write_string("Origin")
    #|  }
    #|}
    #|
    #|pub impl TJsValue for ReferrerPolicy with to_js(self: ReferrerPolicy) -> JsValue {
    #|  match self {
    #|    ReferrerPolicy::NoReferrer => TJsValue::to_js("no-referrer")
    #|    ReferrerPolicy::NoReferrerWhenDowngrade => TJsValue::to_js("no-referrer-when-downgrade")
    #|    ReferrerPolicy::Origin => TJsValue::to_js("origin")
    #|  }
    #|}
    #|
    #|pub fn ReferrerPolicy::from(value: String) -> ReferrerPolicy? {
    #|  match value {
    #|    "no-referrer" => Some(ReferrerPolicy::NoReferrer)
    #|    "no-referrer-when-downgrade" => Some(ReferrerPolicy::NoReferrerWhenDowngrade)
    #|    "origin" => Some(ReferrerPolicy::Origin)
    #|    _ => None
    #|  }
    #|}
    #|
    #|fn ReferrerPolicy::from_unchecked(value: String) -> ReferrerPolicy {
    #|  match value {
    #|    "no-referrer" => ReferrerPolicy::NoReferrer
    #|    "no-referrer-when-downgrade" => ReferrerPolicy::NoReferrerWhenDowngrade
    #|    "origin" => ReferrerPolicy::Origin
    #|    _ => abort("unknown enum value")
    #|  }
    #|}
    #|
    #|pub fn ReferrerPolicy::value(self: ReferrerPolicy) -> String {
    #|  let buf = StringBuilder::new()
    #|  match self {
    #|    ReferrerPolicy::NoReferrer => buf.write_string("no-referrer")
    #|    ReferrerPolicy::NoReferrerWhenDowngrade => buf.write_string("no-referrer-when-downgrade")
    #|    ReferrerPolicy::Origin => buf.write_string("origin")
    #|  }
    #|  buf.to_string()
    #|}
    #|
    #|pub impl FromJsAny for ReferrerPolicy with from_js_any(value : JsAny) -> ReferrerPolicy {
    #|  ReferrerPolicy::from_unchecked(value)
    #|}
  ))
}
