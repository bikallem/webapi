// Do not edit. This file is generated.
// MoonBit type: GetRootNodeOptions
// Specifications: dom.idl

/// [GetRootNodeOptions](https://developer.mozilla.org/en-US/docs/Web/API/GetRootNodeOptions)
#external
pub type GetRootNodeOptions

pub impl TJsValue for GetRootNodeOptions with to_js(self: GetRootNodeOptions) -> JsValue = "%identity"

pub impl FromJsAny for GetRootNodeOptions with from_js_any(value : JsAny) -> GetRootNodeOptions = "%identity"

pub fn GetRootNodeOptions::new(composed? : Bool) -> GetRootNodeOptions {
  get_root_node_options_ffi(opt_to_js(composed))
}

pub fn GetRootNodeOptions::empty() -> GetRootNodeOptions { get_root_node_options_empty_ffi() }

pub fn GetRootNodeOptions::composed(self : GetRootNodeOptions) -> Bool? {
  get_root_node_options_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}