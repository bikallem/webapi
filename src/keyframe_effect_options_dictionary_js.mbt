///|
extern "js" fn keyframe_effect_options_ffi(
  fill : JsValue,
  iteration_start : JsValue,
  iterations : JsValue,
  direction : JsValue,
  easing : JsValue,
  composite : JsValue,
  pseudo_element : JsValue,
) -> KeyframeEffectOptions =
  #|(fill, iterationStart, iterations, direction, easing, composite, pseudoElement) => {
  #|  const obj = {};
  #|  if (fill !== undefined) obj.fill = fill;
  #|  if (iterationStart !== undefined) obj.iterationStart = iterationStart;
  #|  if (iterations !== undefined) obj.iterations = iterations;
  #|  if (direction !== undefined) obj.direction = direction;
  #|  if (easing !== undefined) obj.easing = easing;
  #|  if (composite !== undefined) obj.composite = composite;
  #|  if (pseudoElement !== undefined) obj.pseudoElement = pseudoElement;
  #|  return obj;
  #|}

///|
extern "js" fn keyframe_effect_options_empty_ffi() -> KeyframeEffectOptions = "() => {}"
