// Do not edit. This file is generated.
// MoonBit type: WorkletGlobalScope
// Specifications: html.idl

/// [WorkletGlobalScope](https://developer.mozilla.org/en-US/docs/Web/API/WorkletGlobalScope)
#external
pub type WorkletGlobalScope

pub impl TJsValue for WorkletGlobalScope with to_js(self: WorkletGlobalScope) -> JsValue = "%identity"

pub impl FromJsAny for WorkletGlobalScope with from_js_any(value : JsAny) -> WorkletGlobalScope = "%identity"

pub fn[T: TWorkletGlobalScope] WorkletGlobalScope::into(self : WorkletGlobalScope) -> T = "%identity"

pub impl TWorkletGlobalScope for WorkletGlobalScope

/// [WorkletGlobalScope](https://developer.mozilla.org/en-US/docs/Web/API/WorkletGlobalScope) interface.
pub trait TWorkletGlobalScope: TJsValue {

}

