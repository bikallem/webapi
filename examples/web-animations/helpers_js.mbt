///|
extern "js" fn create_keyframes() -> @webapi.JsValue =
  #|() => [
  #|  { transform: 'translateX(0px) rotate(0deg)', backgroundColor: '#3b82f6' },
  #|  { transform: 'translateX(250px) rotate(180deg)', backgroundColor: '#ef4444' },
  #|  { transform: 'translateX(0px) rotate(360deg)', backgroundColor: '#3b82f6' }
  #|]

///|
extern "js" fn create_animation_options() -> @webapi.JsValue =
  #|() => ({ duration: 2000, iterations: Infinity })

///|
extern "js" fn animate_element(
  element : @webapi.Element,
  keyframes : @webapi.JsValue,
  options : @webapi.JsValue,
) -> @webapi.Animation = "(el, kf, opts) => el.animate(kf, opts)"
