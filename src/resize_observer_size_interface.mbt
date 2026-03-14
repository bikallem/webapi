// Do not edit. This file is generated.
// MoonBit type: ResizeObserverSize
// Specifications: resize-observer.idl

/// [ResizeObserverSize](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverSize)
#external
pub type ResizeObserverSize

pub impl TJsValue for ResizeObserverSize with to_js(self: ResizeObserverSize) -> JsValue = "%identity"

pub impl FromJsAny for ResizeObserverSize with from_js_any(value : JsAny) -> ResizeObserverSize = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TResizeObserverSize] ResizeObserverSize::into(self : ResizeObserverSize) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TResizeObserverSize] ResizeObserverSize::unsafe_into(self : ResizeObserverSize) -> T = "%identity"

pub impl HasConstructor for ResizeObserverSize with constructor_name() { "ResizeObserverSize" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TResizeObserverSize + HasConstructor] ResizeObserverSize::try_into(self : ResizeObserverSize) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TResizeObserverSize for ResizeObserverSize

/// [ResizeObserverSize](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverSize) interface.
pub trait TResizeObserverSize: TJsValue {
  inline_size(self : Self) -> Double = _
  block_size(self : Self) -> Double = _
}

/// [ResizeObserverSize.inlineSize](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverSize/inlineSize)
impl TResizeObserverSize with inline_size(self : Self) -> Double {
  resize_observer_size_inline_size_ffi(TJsValue::to_js(self))
}

/// [ResizeObserverSize.blockSize](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverSize/blockSize)
impl TResizeObserverSize with block_size(self : Self) -> Double {
  resize_observer_size_block_size_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn resize_observer_size_inline_size_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.inlineSize"

///|
#cfg(target="js")
fn resize_observer_size_inline_size_ffi(obj: JsValue) -> Double {
  resize_observer_size_inline_size_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn resize_observer_size_block_size_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.blockSize"

///|
#cfg(target="js")
fn resize_observer_size_block_size_ffi(obj: JsValue) -> Double {
  resize_observer_size_block_size_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn resize_observer_size_inline_size_ffi(obj: JsValue) -> Double = "webapi_ResizeObserverSize" "get_inlineSize"

#cfg(target="wasm-gc")
fn resize_observer_size_block_size_ffi(obj: JsValue) -> Double = "webapi_ResizeObserverSize" "get_blockSize"