///|
test "NamespaceEmitter emits namespace with operation" {
  let idl =
    #|namespace console {
    #|  undefined log(any... data);
    #|};
  let (flattened, type_registry) = parse_and_flatten(idl)
  let emitter = NamespaceEmitter::{ idl: flattened, type_registry }
  let (Filename(filename), emits) = emitter.emit("console")
  inspect(filename, content="console_namespace.mbt")
  let multi = mbt_code_gen_multi(emits)
  inspect(multi.shared, content=(
    
    #|// Do not edit. This file is generated.
    #|// MoonBit type: Console
    #|
    #|
    #|/// [Console](https://developer.mozilla.org/en-US/docs/Web/API/Console)
    #|#external
    #|pub type Console
    #|
    #|pub impl TJsValue for Console with to_js(self: Console) -> JsValue = "%identity"
    #|
    #|pub impl FromJsAny for Console with from_js_any(value : JsAny) -> Console = "%identity"
    #|
    #|/// [Console.log](https://developer.mozilla.org/en-US/docs/Web/API/Console/log)
    #|pub fn Console::log(data : Array[&TJsValue]) -> Unit {
    #|  console_log_ffi(TJsValue::to_js(data.map(fn(v : &TJsValue) -> JsValue { v.to_js() })))
    #|}
  ))
  inspect(multi.js_ffi, content=(
    #|extern "js" fn console_log_ffi(data: JsValue) -> Unit = "(data) => console.log(...data)"
  ))
  inspect(multi.wasm_ffi, content=(
    #|fn console_log_ffi(data: JsValue) -> Unit = "webapi_Console" "log"
  ))
}

///|
test "NamespaceEmitter emits namespace with attribute" {
  let idl =
    #|namespace console {
    #|  readonly attribute boolean enabled;
    #|};
  let (flattened, type_registry) = parse_and_flatten(idl)
  let emitter = NamespaceEmitter::{ idl: flattened, type_registry }
  let (_filename, emits) = emitter.emit("console")
  let multi = mbt_code_gen_multi(emits)
  inspect(multi.shared, content=(
    
    #|// Do not edit. This file is generated.
    #|// MoonBit type: Console
    #|
    #|
    #|/// [Console](https://developer.mozilla.org/en-US/docs/Web/API/Console)
    #|#external
    #|pub type Console
    #|
    #|pub impl TJsValue for Console with to_js(self: Console) -> JsValue = "%identity"
    #|
    #|pub impl FromJsAny for Console with from_js_any(value : JsAny) -> Console = "%identity"
    #|
    #|/// [Console.enabled](https://developer.mozilla.org/en-US/docs/Web/API/Console/enabled)
    #|pub fn Console::enabled() -> Bool {
    #|  console_enabled_ffi()
    #|}
  ))
  inspect(multi.js_ffi, content=(
    
    #|extern "js" fn console_enabled_ffi_js() -> JsValue = "() => console.enabled"
    #|
    #|///|
    #|fn console_enabled_ffi() -> Bool {
    #|  console_enabled_ffi_js().unsafe_cast()
    #|}
  ))
  inspect(multi.wasm_ffi, content=(
    #|fn console_enabled_ffi() -> Bool = "webapi_Console" "get_enabled"
  ))
}

///|
test "NamespaceEmitter emits namespace with const" {
  let idl =
    #|namespace CSS {
    #|  const unsigned short SUPPORTS_EVERYTHING = 0xFFFF;
    #|};
  let (flattened, type_registry) = parse_and_flatten(idl)
  let emitter = NamespaceEmitter::{ idl: flattened, type_registry }
  let (_filename, emits) = emitter.emit("CSS")
  let multi = mbt_code_gen_multi(emits)
  inspect(multi.shared, content=(
    
    #|// Do not edit. This file is generated.
    #|// MoonBit type: CSS
    #|
    #|
    #|/// [CSS](https://developer.mozilla.org/en-US/docs/Web/API/CSS)
    #|#external
    #|pub type CSS
    #|
    #|pub impl TJsValue for CSS with to_js(self: CSS) -> JsValue = "%identity"
    #|
    #|pub impl FromJsAny for CSS with from_js_any(value : JsAny) -> CSS = "%identity"
    #|
    #|pub const CSS_SUPPORTS_EVERYTHING: UInt = 0xFFFF
    #|
    #|
  ))
}

///|
test "NamespaceEmitter pascal-cases namespace name" {
  let idl =
    #|namespace console {
    #|  undefined log(any... data);
    #|};
  let (flattened, type_registry) = parse_and_flatten(idl)
  let emitter = NamespaceEmitter::{ idl: flattened, type_registry }
  let (_filename, emits) = emitter.emit("console")
  let multi = mbt_code_gen_multi(emits)
  // "console" becomes "Console" in MoonBit type name
  inspect(multi.shared.contains("pub type Console"), content="true")
}
