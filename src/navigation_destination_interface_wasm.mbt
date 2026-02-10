fn navigation_destination_url_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NavigationDestination" "get_url"

///|
fn navigation_destination_url_ffi(obj: JsValue) -> String {
  jsvalue_to_string(navigation_destination_url_ffi_wasm(obj))
}

fn navigation_destination_key_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NavigationDestination" "get_key"

///|
fn navigation_destination_key_ffi(obj: JsValue) -> String {
  jsvalue_to_string(navigation_destination_key_ffi_wasm(obj))
}

fn navigation_destination_id_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NavigationDestination" "get_id"

///|
fn navigation_destination_id_ffi(obj: JsValue) -> String {
  jsvalue_to_string(navigation_destination_id_ffi_wasm(obj))
}

fn navigation_destination_index_ffi(obj: JsValue) -> Int64 = "webapi_NavigationDestination" "get_index"

fn navigation_destination_same_document_ffi(obj: JsValue) -> Bool = "webapi_NavigationDestination" "get_sameDocument"

fn navigation_destination_get_state_ffi(obj: JsValue) -> JsValue = "webapi_NavigationDestination" "getState"