///|
extern "js" fn pointer_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  ctrl_key : JsValue,
  shift_key : JsValue,
  alt_key : JsValue,
  meta_key : JsValue,
  modifier_alt_graph : JsValue,
  modifier_caps_lock : JsValue,
  modifier_fn : JsValue,
  modifier_fn_lock : JsValue,
  modifier_hyper : JsValue,
  modifier_num_lock : JsValue,
  modifier_scroll_lock : JsValue,
  modifier_super : JsValue,
  modifier_symbol : JsValue,
  modifier_symbol_lock : JsValue,
  screen_x : JsValue,
  screen_y : JsValue,
  client_x : JsValue,
  client_y : JsValue,
  button : JsValue,
  buttons : JsValue,
  related_target : JsValue,
  pointer_id : JsValue,
  width : JsValue,
  height : JsValue,
  pressure : JsValue,
  tangential_pressure : JsValue,
  tilt_x : JsValue,
  tilt_y : JsValue,
  twist : JsValue,
  altitude_angle : JsValue,
  azimuth_angle : JsValue,
  pointer_type : JsValue,
  is_primary : JsValue,
  persistent_device_id : JsValue,
  coalesced_events : JsValue,
  predicted_events : JsValue,
) -> PointerEventInit =
  #|(bubbles, cancelable, composed, view, detail, which, ctrlKey, shiftKey, altKey, metaKey, modifierAltGraph, modifierCapsLock, modifierFn, modifierFnLock, modifierHyper, modifierNumLock, modifierScrollLock, modifierSuper, modifierSymbol, modifierSymbolLock, screenX, screenY, clientX, clientY, button, buttons, relatedTarget, pointerId, width, height, pressure, tangentialPressure, tiltX, tiltY, twist, altitudeAngle, azimuthAngle, pointerType, isPrimary, persistentDeviceId, coalescedEvents, predictedEvents) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (view !== undefined) obj.view = view;
  #|  if (detail !== undefined) obj.detail = detail;
  #|  if (which !== undefined) obj.which = which;
  #|  if (ctrlKey !== undefined) obj.ctrlKey = ctrlKey;
  #|  if (shiftKey !== undefined) obj.shiftKey = shiftKey;
  #|  if (altKey !== undefined) obj.altKey = altKey;
  #|  if (metaKey !== undefined) obj.metaKey = metaKey;
  #|  if (modifierAltGraph !== undefined) obj.modifierAltGraph = modifierAltGraph;
  #|  if (modifierCapsLock !== undefined) obj.modifierCapsLock = modifierCapsLock;
  #|  if (modifierFn !== undefined) obj.modifierFn = modifierFn;
  #|  if (modifierFnLock !== undefined) obj.modifierFnLock = modifierFnLock;
  #|  if (modifierHyper !== undefined) obj.modifierHyper = modifierHyper;
  #|  if (modifierNumLock !== undefined) obj.modifierNumLock = modifierNumLock;
  #|  if (modifierScrollLock !== undefined) obj.modifierScrollLock = modifierScrollLock;
  #|  if (modifierSuper !== undefined) obj.modifierSuper = modifierSuper;
  #|  if (modifierSymbol !== undefined) obj.modifierSymbol = modifierSymbol;
  #|  if (modifierSymbolLock !== undefined) obj.modifierSymbolLock = modifierSymbolLock;
  #|  if (screenX !== undefined) obj.screenX = screenX;
  #|  if (screenY !== undefined) obj.screenY = screenY;
  #|  if (clientX !== undefined) obj.clientX = clientX;
  #|  if (clientY !== undefined) obj.clientY = clientY;
  #|  if (button !== undefined) obj.button = button;
  #|  if (buttons !== undefined) obj.buttons = buttons;
  #|  if (relatedTarget !== undefined) obj.relatedTarget = relatedTarget;
  #|  if (pointerId !== undefined) obj.pointerId = pointerId;
  #|  if (width !== undefined) obj.width = width;
  #|  if (height !== undefined) obj.height = height;
  #|  if (pressure !== undefined) obj.pressure = pressure;
  #|  if (tangentialPressure !== undefined) obj.tangentialPressure = tangentialPressure;
  #|  if (tiltX !== undefined) obj.tiltX = tiltX;
  #|  if (tiltY !== undefined) obj.tiltY = tiltY;
  #|  if (twist !== undefined) obj.twist = twist;
  #|  if (altitudeAngle !== undefined) obj.altitudeAngle = altitudeAngle;
  #|  if (azimuthAngle !== undefined) obj.azimuthAngle = azimuthAngle;
  #|  if (pointerType !== undefined) obj.pointerType = pointerType;
  #|  if (isPrimary !== undefined) obj.isPrimary = isPrimary;
  #|  if (persistentDeviceId !== undefined) obj.persistentDeviceId = persistentDeviceId;
  #|  if (coalescedEvents !== undefined) obj.coalescedEvents = coalescedEvents;
  #|  if (predictedEvents !== undefined) obj.predictedEvents = predictedEvents;
  #|  return obj;
  #|}

///|
extern "js" fn pointer_event_init_empty_ffi() -> PointerEventInit = "() => {}"

///|
extern "js" fn pointer_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
extern "js" fn pointer_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
extern "js" fn pointer_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
extern "js" fn pointer_event_init_get_view_ffi(obj : JsValue) -> JsValue = "(obj) => obj.view"

///|
extern "js" fn pointer_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "(obj) => obj.detail"

///|
extern "js" fn pointer_event_init_get_which_ffi(obj : JsValue) -> JsValue = "(obj) => obj.which"

///|
extern "js" fn pointer_event_init_get_ctrl_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ctrlKey"

///|
extern "js" fn pointer_event_init_get_shift_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.shiftKey"

///|
extern "js" fn pointer_event_init_get_alt_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.altKey"

///|
extern "js" fn pointer_event_init_get_meta_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.metaKey"

///|
extern "js" fn pointer_event_init_get_modifier_alt_graph_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierAltGraph"

///|
extern "js" fn pointer_event_init_get_modifier_caps_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierCapsLock"

///|
extern "js" fn pointer_event_init_get_modifier_fn_ffi(obj : JsValue) -> JsValue = "(obj) => obj.modifierFn"

///|
extern "js" fn pointer_event_init_get_modifier_fn_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierFnLock"

///|
extern "js" fn pointer_event_init_get_modifier_hyper_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierHyper"

///|
extern "js" fn pointer_event_init_get_modifier_num_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierNumLock"

///|
extern "js" fn pointer_event_init_get_modifier_scroll_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierScrollLock"

///|
extern "js" fn pointer_event_init_get_modifier_super_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierSuper"

///|
extern "js" fn pointer_event_init_get_modifier_symbol_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierSymbol"

///|
extern "js" fn pointer_event_init_get_modifier_symbol_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierSymbolLock"

///|
extern "js" fn pointer_event_init_get_screen_x_ffi(obj : JsValue) -> JsValue = "(obj) => obj.screenX"

///|
extern "js" fn pointer_event_init_get_screen_y_ffi(obj : JsValue) -> JsValue = "(obj) => obj.screenY"

///|
extern "js" fn pointer_event_init_get_client_x_ffi(obj : JsValue) -> JsValue = "(obj) => obj.clientX"

///|
extern "js" fn pointer_event_init_get_client_y_ffi(obj : JsValue) -> JsValue = "(obj) => obj.clientY"

///|
extern "js" fn pointer_event_init_get_button_ffi(obj : JsValue) -> JsValue = "(obj) => obj.button"

///|
extern "js" fn pointer_event_init_get_buttons_ffi(obj : JsValue) -> JsValue = "(obj) => obj.buttons"

///|
extern "js" fn pointer_event_init_get_related_target_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.relatedTarget"

///|
extern "js" fn pointer_event_init_get_pointer_id_ffi(obj : JsValue) -> JsValue = "(obj) => obj.pointerId"

///|
extern "js" fn pointer_event_init_get_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
extern "js" fn pointer_event_init_get_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
extern "js" fn pointer_event_init_get_pressure_ffi(obj : JsValue) -> JsValue = "(obj) => obj.pressure"

///|
extern "js" fn pointer_event_init_get_tangential_pressure_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.tangentialPressure"

///|
extern "js" fn pointer_event_init_get_tilt_x_ffi(obj : JsValue) -> JsValue = "(obj) => obj.tiltX"

///|
extern "js" fn pointer_event_init_get_tilt_y_ffi(obj : JsValue) -> JsValue = "(obj) => obj.tiltY"

///|
extern "js" fn pointer_event_init_get_twist_ffi(obj : JsValue) -> JsValue = "(obj) => obj.twist"

///|
extern "js" fn pointer_event_init_get_altitude_angle_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.altitudeAngle"

///|
extern "js" fn pointer_event_init_get_azimuth_angle_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.azimuthAngle"

///|
extern "js" fn pointer_event_init_get_pointer_type_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.pointerType"

///|
extern "js" fn pointer_event_init_get_is_primary_ffi(obj : JsValue) -> JsValue = "(obj) => obj.isPrimary"

///|
extern "js" fn pointer_event_init_get_persistent_device_id_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.persistentDeviceId"

///|
extern "js" fn pointer_event_init_get_coalesced_events_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.coalescedEvents"

///|
extern "js" fn pointer_event_init_get_predicted_events_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.predictedEvents"
