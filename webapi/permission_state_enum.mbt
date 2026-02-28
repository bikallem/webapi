// Do not edit. This file is generated.
// MoonBit type: PermissionState
// Specifications: permissions.idl

///|
pub(all) enum PermissionState {
  Granted
  Denied
  Prompt
} derive(Eq)

///|
pub impl Show for PermissionState with output(
  self : PermissionState,
  logger : &Logger,
) -> Unit {
  match self {
    PermissionState::Granted => logger.write_string("Granted")
    PermissionState::Denied => logger.write_string("Denied")
    PermissionState::Prompt => logger.write_string("Prompt")
  }
}

///|
pub impl TJsValue for PermissionState with to_js(self : PermissionState) -> JsValue {
  match self {
    PermissionState::Granted => TJsValue::to_js("granted")
    PermissionState::Denied => TJsValue::to_js("denied")
    PermissionState::Prompt => TJsValue::to_js("prompt")
  }
}

///|
pub fn PermissionState::from(value : String) -> PermissionState? {
  match value {
    "granted" => Some(PermissionState::Granted)
    "denied" => Some(PermissionState::Denied)
    "prompt" => Some(PermissionState::Prompt)
    _ => None
  }
}

///|
fn PermissionState::from_unchecked(value : String) -> PermissionState {
  match value {
    "granted" => PermissionState::Granted
    "denied" => PermissionState::Denied
    "prompt" => PermissionState::Prompt
    _ => abort("unknown PermissionState enum value")
  }
}

///|
pub fn PermissionState::value(self : PermissionState) -> String {
  match self {
    PermissionState::Granted => "granted"
    PermissionState::Denied => "denied"
    PermissionState::Prompt => "prompt"
  }
}

///|
pub impl FromJsAny for PermissionState with from_js_any(value : JsAny) -> PermissionState {
  PermissionState::from_unchecked(value)
}
