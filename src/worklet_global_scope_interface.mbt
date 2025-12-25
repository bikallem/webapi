// Do not edit. This file is generated.
// MoonBit type: WorkletGlobalScope
// Specifications: html.idl

///|
#external
pub type WorkletGlobalScope

///|
pub impl TJsValue for WorkletGlobalScope with to_js(self : WorkletGlobalScope) -> JsValue = "%identity"

///|
pub fn[T : TWorkletGlobalScope] WorkletGlobalScope::into(
  self : WorkletGlobalScope,
) -> T = "%identity"

///|
pub impl TWorkletGlobalScope for WorkletGlobalScope

///|
pub trait TWorkletGlobalScope: TJsValue {}
