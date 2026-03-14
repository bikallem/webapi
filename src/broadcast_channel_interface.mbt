// Do not edit. This file is generated.
// MoonBit type: BroadcastChannel
// Specifications: html.idl

/// [BroadcastChannel](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel)
#external
pub type BroadcastChannel

pub impl TJsValue for BroadcastChannel with to_js(self: BroadcastChannel) -> JsValue = "%identity"

pub impl FromJsAny for BroadcastChannel with from_js_any(value : JsAny) -> BroadcastChannel = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TBroadcastChannel] BroadcastChannel::into(self : BroadcastChannel) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TBroadcastChannel] BroadcastChannel::unsafe_into(self : BroadcastChannel) -> T = "%identity"

pub impl HasConstructor for BroadcastChannel with constructor_name() { "BroadcastChannel" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TBroadcastChannel + HasConstructor] BroadcastChannel::try_into(self : BroadcastChannel) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TBroadcastChannel for BroadcastChannel

pub impl TEventTarget for BroadcastChannel

pub fn BroadcastChannel::new(name : String) -> BroadcastChannel {
  broadcast_channel_new_ffi(TJsValue::to_js(name))
}

/// [BroadcastChannel](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel) interface.
pub trait TBroadcastChannel: TEventTarget {
  name(self : Self) -> String = _
  post_message(self : Self, message : JsValue) -> Unit = _
  close(self : Self) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : (Event) -> JsValue) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : (Event) -> JsValue) -> Unit = _
}

/// [BroadcastChannel.name](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/name)
impl TBroadcastChannel with name(self : Self) -> String {
  broadcast_channel_name_ffi(TJsValue::to_js(self))
}

/// [BroadcastChannel.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/postMessage)
impl TBroadcastChannel with post_message(self : Self, 
message : JsValue) -> Unit {
  broadcast_channel_post_message_ffi(TJsValue::to_js(self), TJsValue::to_js(message))
}

/// [BroadcastChannel.close](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/close)
impl TBroadcastChannel with close(self : Self) -> Unit {
  broadcast_channel_close_ffi(TJsValue::to_js(self))
}

/// [BroadcastChannel.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/onmessage)
impl TBroadcastChannel with onmessage(self : Self) -> EventHandler {
  broadcast_channel_onmessage_ffi(TJsValue::to_js(self))
}

/// [BroadcastChannel.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/onmessage)
impl TBroadcastChannel with set_onmessage(self : Self, 
onmessage : (Event) -> JsValue) -> Unit {
  broadcast_channel_set_onmessage_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onmessage)))
}

/// [BroadcastChannel.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/onmessageerror)
impl TBroadcastChannel with onmessageerror(self : Self) -> EventHandler {
  broadcast_channel_onmessageerror_ffi(TJsValue::to_js(self))
}

/// [BroadcastChannel.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/BroadcastChannel/onmessageerror)
impl TBroadcastChannel with set_onmessageerror(self : Self, 
onmessageerror : (Event) -> JsValue) -> Unit {
  broadcast_channel_set_onmessageerror_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onmessageerror)))
}

#cfg(target="js")
extern "js" fn broadcast_channel_new_ffi(name: JsValue) -> BroadcastChannel = "(name) => new BroadcastChannel(name)"

#cfg(target="js")
extern "js" fn broadcast_channel_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn broadcast_channel_name_ffi(obj: JsValue) -> String {
  broadcast_channel_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn broadcast_channel_post_message_ffi(obj: JsValue, message: JsValue) -> Unit = "(obj, message) => obj.postMessage(message)"

#cfg(target="js")
extern "js" fn broadcast_channel_close_ffi(obj: JsValue) -> Unit = "(obj) => obj.close()"

#cfg(target="js")
extern "js" fn broadcast_channel_onmessage_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onmessage"

///|
#cfg(target="js")
fn broadcast_channel_onmessage_ffi(obj: JsValue) -> EventHandler {
  broadcast_channel_onmessage_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn broadcast_channel_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

#cfg(target="js")
extern "js" fn broadcast_channel_onmessageerror_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onmessageerror"

///|
#cfg(target="js")
fn broadcast_channel_onmessageerror_ffi(obj: JsValue) -> EventHandler {
  broadcast_channel_onmessageerror_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn broadcast_channel_set_onmessageerror_ffi(obj: JsValue, onmessageerror: JsValue) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

#cfg(target="wasm-gc")
fn broadcast_channel_new_ffi(name: JsValue) -> BroadcastChannel = "webapi_BroadcastChannel" "new"

#cfg(target="wasm-gc")
fn broadcast_channel_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_BroadcastChannel" "get_name"

///|
#cfg(target="wasm-gc")
fn broadcast_channel_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(broadcast_channel_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn broadcast_channel_post_message_ffi(obj: JsValue, message: JsValue) -> Unit = "webapi_BroadcastChannel" "postMessage"

#cfg(target="wasm-gc")
fn broadcast_channel_close_ffi(obj: JsValue) -> Unit = "webapi_BroadcastChannel" "close"

#cfg(target="wasm-gc")
fn broadcast_channel_onmessage_ffi_wasm(obj: JsValue) -> JsValue = "webapi_BroadcastChannel" "get_onmessage"

///|
#cfg(target="wasm-gc")
fn broadcast_channel_onmessage_ffi(obj: JsValue) -> EventHandler {
  broadcast_channel_onmessage_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn broadcast_channel_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "webapi_BroadcastChannel" "set_onmessage"

#cfg(target="wasm-gc")
fn broadcast_channel_onmessageerror_ffi_wasm(obj: JsValue) -> JsValue = "webapi_BroadcastChannel" "get_onmessageerror"

///|
#cfg(target="wasm-gc")
fn broadcast_channel_onmessageerror_ffi(obj: JsValue) -> EventHandler {
  broadcast_channel_onmessageerror_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn broadcast_channel_set_onmessageerror_ffi(obj: JsValue, onmessageerror: JsValue) -> Unit = "webapi_BroadcastChannel" "set_onmessageerror"