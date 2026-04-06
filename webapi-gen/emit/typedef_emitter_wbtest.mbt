///|
test "typedef emiiter emits alias typedef" {
  let idl =
    #|typedef DOMString MyString;
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let emitter = TypedefEmitter::{ idl: flattened, type_registry: registry }
  let (filename, emits) = emitter.emit("MyString")
  let multi = mbt_code_gen_multi(emits)
  json_inspect(filename, content=["Filename", "my_string_typedef.mbt"])
  inspect(
    multi.shared,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: MyString
      #|// Specifications: 
      #|
      #|pub type MyString = String
    ),
  )
  inspect(multi.js_ffi)
  inspect(multi.wasm_ffi)
}

///|
test "typedef emitter emits union typedef" {
  let idl =
    #|typedef (DOMString or Function or undefined) MyUnion;
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let emitter = TypedefEmitter::{ idl: flattened, type_registry: registry }
  let (filename, emits) = emitter.emit("MyUnion")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    filename,
    content=(
      #|Filename("my_union_typedef.mbt")
    ),
  )
  inspect(
    multi.shared,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: MyUnion
      #|// Specifications: 
      #|
      #|/// [MyUnion](https://developer.mozilla.org/en-US/docs/Web/API/MyUnion)
      #|#external
      #|pub type MyUnion
      #|
      #|pub impl TJsValue for MyUnion with to_js(self: MyUnion) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for MyUnion with from_js_any(value : JsAny) -> MyUnion = "%identity"
      #|
      #|pub(open) trait TMyUnion : TJsValue {}
      #|
      #|#deprecated("Use unsafe_into or try_into instead")
      #|pub fn[T : TMyUnion + FromJsAny] MyUnion::into(self : MyUnion) -> T {
      #|  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
      #|}
      #|
      #|pub fn[T : TMyUnion + FromJsAny] MyUnion::unsafe_into(self : MyUnion) -> T {
      #|  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
      #|}
      #|
      #|pub fn[T : TMyUnion] MyUnion::from(value : T) -> MyUnion = "%identity"
      #|
      #|pub impl TMyUnion for MyUnion
      #|
      #|pub impl TMyUnion for String
      #|
      #|pub impl TMyUnion for Function
      #|
      #|pub impl TMyUnion for Unit
    ),
  )
  inspect(multi.js_ffi)
  inspect(multi.wasm_ffi)
}

///|
test "typedef emitter emit interface types as trait references in union typedef" {
  let idl =
    #|interface MyInterface {};
    #|
    #|typedef (MyInterface or DOMString) MyUnion;
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let emitter = TypedefEmitter::{ idl: flattened, type_registry: registry }
  let (_filename, emits) = emitter.emit("MyUnion")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: MyUnion
      #|// Specifications: 
      #|
      #|/// [MyUnion](https://developer.mozilla.org/en-US/docs/Web/API/MyUnion)
      #|#external
      #|pub type MyUnion
      #|
      #|pub impl TJsValue for MyUnion with to_js(self: MyUnion) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for MyUnion with from_js_any(value : JsAny) -> MyUnion = "%identity"
      #|
      #|pub(open) trait TMyUnion : TJsValue {}
      #|
      #|#deprecated("Use unsafe_into or try_into instead")
      #|pub fn[T : TMyUnion + FromJsAny] MyUnion::into(self : MyUnion) -> T {
      #|  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
      #|}
      #|
      #|pub fn[T : TMyUnion + FromJsAny] MyUnion::unsafe_into(self : MyUnion) -> T {
      #|  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
      #|}
      #|
      #|pub fn[T : TMyUnion] MyUnion::from(value : T) -> MyUnion = "%identity"
      #|
      #|pub impl TMyUnion for MyUnion
      #|
      #|pub impl TMyUnion for MyInterface
      #|
      #|pub impl TMyUnion for String
    ),
  )
  inspect(multi.js_ffi)
  inspect(multi.wasm_ffi)
}

///|
test "typedef emitter emits alias of nullable interface" {
  let idl =
    #|interface MyInterface {};
    #|
    #|typedef MyInterface? MyNullableInterface;
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let emitter = TypedefEmitter::{ idl: flattened, type_registry: registry }
  let (_filename, emits) = emitter.emit("MyNullableInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: MyNullableInterface
      #|// Specifications: 
      #|
      #|pub type MyNullableInterface = MyInterface
    ),
  )
  inspect(multi.js_ffi)
  inspect(multi.wasm_ffi)
}
