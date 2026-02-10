///|
extern "js" fn storage_estimate_ffi(
  usage : JsValue,
  quota : JsValue,
) -> StorageEstimate =
  #|(usage, quota) => {
  #|  const obj = {};
  #|  if (usage !== undefined) obj.usage = usage;
  #|  if (quota !== undefined) obj.quota = quota;
  #|  return obj;
  #|}

///|
extern "js" fn storage_estimate_empty_ffi() -> StorageEstimate = "() => {}"
