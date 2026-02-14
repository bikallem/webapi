///|
fn create_keyframes() -> @webapi.JsValue = "webanimations_helpers" "createKeyframes"

///|
fn create_animation_options() -> @webapi.JsValue = "webanimations_helpers" "createAnimationOptions"

///|
fn animate_element(
  element : @webapi.Element,
  keyframes : @webapi.JsValue,
  options : @webapi.JsValue,
) -> @webapi.Animation = "webanimations_helpers" "animateElement"
