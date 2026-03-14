///|
test "func_call_args emits variadic trait-ref conversion" {
  let args = [
    @type_mapping.MethodArg::{
      name: "parts",
      original_name: "parts",
      type_: @type_mapping.ArgMbtType::Other("Array[&TRequestInfo]"),
      optional: false,
      variadic: true,
    },
  ]
  inspect(
    func_call_args(args),
    content="TJsValue::to_js(parts.map(fn(v : &TRequestInfo) -> JsValue { v.to_js() }))",
  )
}

///|
test "func_call_args emits variadic non-trait conversion" {
  let args = [
    @type_mapping.MethodArg::{
      name: "names",
      original_name: "names",
      type_: @type_mapping.ArgMbtType::Other("Array[String]"),
      optional: false,
      variadic: true,
    },
  ]
  inspect(
    func_call_args(args),
    content="TJsValue::to_js(names.map(fn(v) { TJsValue::to_js(v) }))",
  )
}

///|
test "func_call_args falls back for malformed variadic type" {
  let args = [
    @type_mapping.MethodArg::{
      name: "names",
      original_name: "names",
      type_: @type_mapping.ArgMbtType::Primitive("String"),
      optional: false,
      variadic: true,
    },
  ]
  inspect(func_call_args(args), content="TJsValue::to_js(names)")
}

///|
test "func_call_args keeps separators stable for optional trait args" {
  let args : Array[@type_mapping.MethodArg] = [
    @type_mapping.MethodArg::{
      name: "self",
      original_name: "self",
      type_: @type_mapping.ArgMbtType::Self,
      optional: false,
      variadic: false,
    },
    @type_mapping.MethodArg::{
      name: "input",
      original_name: "input",
      type_: @type_mapping.ArgMbtType::Other("&TRequestInfo"),
      optional: true,
      variadic: false,
    },
    @type_mapping.MethodArg::{
      name: "mode",
      original_name: "mode",
      type_: @type_mapping.ArgMbtType::Primitive("String"),
      optional: false,
      variadic: false,
    },
  ]
  let rendered = func_call_args(args)
  inspect(rendered.contains("TJsValue::to_js(self)"), content="true")
  inspect(rendered.contains("match input {"), content="true")
  inspect(rendered.contains("None => JsValue::undefined()"), content="true")
  inspect(rendered.contains("TJsValue::to_js(mode)"), content="true")
  inspect(rendered.contains(",,"), content="false")
}

///|
test "emit_wasm_ffi_with_return bridges Array return through JsArray" {
  let Code(rendered) = emit_wasm_ffi_with_return(
    "element_get_box_quads_ffi",
    "obj : JsValue, options : JsValue",
    ["obj", "options"],
    "Array[DOMQuad]",
    is_optional=false,
    is_void=false,
    is_string=false,
    is_enum=false,
    is_valid_stub=false,
    "webapi_Element",
    "getBoxQuads",
  )
  inspect(
    rendered,
    content=(
      #|fn element_get_box_quads_ffi_wasm(obj : JsValue, options : JsValue) -> JsArray = "webapi_Element" "getBoxQuads"
      #|
      #|///|
      #|fn element_get_box_quads_ffi(obj : JsValue, options : JsValue) -> Array[DOMQuad] {
      #|  element_get_box_quads_ffi_wasm(obj, options).to_array()
      #|}
    ),
  )
}

///|
test "emit_wasm_ffi_with_return uses value array bridge for Array[Double]" {
  let Code(rendered) = emit_wasm_ffi_with_return(
    "canvas_rendering_context2d_get_line_dash_ffi",
    "obj : JsValue",
    ["obj"],
    "Array[Double]",
    is_optional=false,
    is_void=false,
    is_string=false,
    is_enum=false,
    is_valid_stub=false,
    "webapi_CanvasRenderingContext2D",
    "getLineDash",
  )
  inspect(
    rendered,
    content=(
      #|fn canvas_rendering_context2d_get_line_dash_ffi_wasm(obj : JsValue) -> JsArray = "webapi_CanvasRenderingContext2D" "getLineDash"
      #|
      #|///|
      #|fn canvas_rendering_context2d_get_line_dash_ffi(obj : JsValue) -> Array[Double] {
      #|  canvas_rendering_context2d_get_line_dash_ffi_wasm(obj).to_value_array()
      #|}
    ),
  )
}

///|
test "emit_wasm_ffi_with_return uses string array bridge for Array[String]" {
  let Code(rendered) = emit_wasm_ffi_with_return(
    "element_get_attribute_names_ffi",
    "obj : JsValue",
    ["obj"],
    "Array[String]",
    is_optional=false,
    is_void=false,
    is_string=false,
    is_enum=false,
    is_valid_stub=false,
    "webapi_Element",
    "getAttributeNames",
  )
  inspect(
    rendered,
    content=(
      #|fn element_get_attribute_names_ffi_wasm(obj : JsValue) -> JsArray = "webapi_Element" "getAttributeNames"
      #|
      #|///|
      #|fn element_get_attribute_names_ffi(obj : JsValue) -> Array[String] {
      #|  element_get_attribute_names_ffi_wasm(obj).to_string_array()
      #|}
    ),
  )
}

///|
test "emit_wasm_ffi_with_return uses jsvalue_to_string for CSSOMString return" {
  let Code(rendered) = emit_wasm_ffi_with_return(
    "css_style_declaration_remove_property_ffi",
    "obj : JsValue, property : JsValue",
    ["obj", "property"],
    "CSSOMString",
    is_optional=false,
    is_void=false,
    is_string=true,
    is_enum=false,
    is_valid_stub=false,
    "webapi_CSSStyleDeclaration",
    "removeProperty",
  )
  inspect(
    rendered,
    content=(
      #|fn css_style_declaration_remove_property_ffi_wasm(obj : JsValue, property : JsValue) -> JsValue = "webapi_CSSStyleDeclaration" "removeProperty"
      #|
      #|///|
      #|fn css_style_declaration_remove_property_ffi(obj : JsValue, property : JsValue) -> CSSOMString {
      #|  jsvalue_to_string(css_style_declaration_remove_property_ffi_wasm(obj, property))
      #|}
    ),
  )
}

///|
test "AttributeGetMethodEmit uses jsvalue_to_string for CSSOMString attribute" {
  let Code(rendered) = AttributeGetMethodEmit::{
    interface_name: "CSSStyleDeclaration",
    original_name: "cssText",
    return_type: "CSSOMString",
    is_enum_type: false,
    is_valid_wasm_stub: false,
  }.ffi_emit_wasm("webapi_CSSStyleDeclaration")
  inspect(
    rendered,
    content=(
      #|fn css_style_declaration_css_text_ffi_wasm(obj: JsValue) -> JsValue = "webapi_CSSStyleDeclaration" "get_cssText"
      #|
      #|///|
      #|fn css_style_declaration_css_text_ffi(obj: JsValue) -> CSSOMString {
      #|  jsvalue_to_string(css_style_declaration_css_text_ffi_wasm(obj))
      #|}
    ),
  )
}

///|
test "AttributeGetMethodEmit uses to_option_prim for optional string returns" {
  let Code(rendered) = AttributeGetMethodEmit::{
    interface_name: "Storage",
    original_name: "key",
    return_type: "String?",
    is_enum_type: false,
    is_valid_wasm_stub: false,
  }.impl_emit()
  inspect(
    rendered,
    content=(
      #|/// [Storage.key](https://developer.mozilla.org/en-US/docs/Web/API/Storage/key)
      #|impl TStorage with key(self : Self) -> String? {
      #|  storage_key_ffi(TJsValue::to_js(self)).to_option_prim()
      #|}
    ),
  )
}

///|
test "AttributeGetMethodEmit keeps optional interface returns on to_option" {
  let Code(rendered) = AttributeGetMethodEmit::{
    interface_name: "Window",
    original_name: "opener",
    return_type: "Window?",
    is_enum_type: false,
    is_valid_wasm_stub: false,
  }.impl_emit()
  inspect(
    rendered,
    content=(
      #|/// [Window.opener](https://developer.mozilla.org/en-US/docs/Web/API/Window/opener)
      #|impl TWindow with opener(self : Self) -> Window? {
      #|  window_opener_ffi(TJsValue::to_js(self)).to_option()
      #|}
    ),
  )
}

///|
test "StaticAttributeGetMethodEmit uses to_option_prim for optional string returns" {
  let Code(rendered) = StaticAttributeGetMethodEmit::{
    interface_name: "Navigator",
    js_name: "navigator",
    original_name: "vendor",
    return_type: "String?",
    is_enum_type: false,
    is_valid_wasm_stub: false,
  }.impl_emit()
  inspect(
    rendered,
    content=(
      #|/// [Navigator.vendor](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/vendor)
      #|pub fn Navigator::vendor() -> String? {
      #|  navigator_vendor_ffi().to_option_prim()
      #|}
    ),
  )
}

///|
test "StaticAttributeGetMethodEmit keeps optional interface returns on to_option" {
  let Code(rendered) = StaticAttributeGetMethodEmit::{
    interface_name: "NavigationCurrentEntryChangeEvent",
    js_name: "navigationCurrentEntryChangeEvent",
    original_name: "navigationType",
    return_type: "NavigationDestination?",
    is_enum_type: false,
    is_valid_wasm_stub: false,
  }.impl_emit()
  inspect(
    rendered,
    content=(
      #|/// [NavigationCurrentEntryChangeEvent.navigationType](https://developer.mozilla.org/en-US/docs/Web/API/NavigationCurrentEntryChangeEvent/navigationType)
      #|pub fn NavigationCurrentEntryChangeEvent::navigation_type() -> NavigationDestination? {
      #|  navigation_current_entry_change_event_navigation_type_ffi().to_option()
      #|}
    ),
  )
}
