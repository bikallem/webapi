///|
pub(all) struct TypedefEmitter {
  idl : @flattened_idl.FlattenedIdl
  type_registry : @type_registry.TypeRegistry
}

///|
pub impl Emitter for TypedefEmitter with emit(
  self : TypedefEmitter,
  name : String,
) -> (Filename, Array[Emit]) {
  let filename = Filename("\{@type_mapping.snake_case(name)}_typedef.mbt")
  let typedef_def = self.idl.typedefs[name]
  let emits = [
    Emit::FileHeader(
      TypeName(typedef_def.name),
      specs_from_optional(typedef_def.spec),
    ),
  ]
  let typedef_emits = match typedef_def.type_ {
    Union(options) => {
      let emits = []
      let trait_name = TraitName("T\{typedef_def.name}")
      let external_name = TypeName(typedef_def.name)
      emits
      ..push(Emit::External(external_name))
      ..push(Emit::ImplTJsValue(external_name))
      ..push(Emit::ImplFromJsAny(external_name))
      ..push(Emit::UnionArgTrait(trait_name))
      ..push(Emit::UnionIntoMethod(external_name))
      ..push(Emit::FromMethod(external_name))
      .push(Emit::UnionArgTraitImpl(external_name, trait_name))
      let seen : @hashset.HashSet[@type_mapping.ArgMbtType] = @hashset.new()
      for opt in options {
        let (mbt_type, arg_emits) = arg_mbt_type(
          opt.type_,
          typedef_def.name,
          "",
          "",
          self.type_registry,
        )
        if !seen.contains(mbt_type) {
          seen.add(mbt_type)
          emits
          ..push_iter(arg_emits.iter())
          .push(Emit::UnionArgTraitImpl(TypeName(mbt_type.name()), trait_name))
        }
      }
      emits
    }
    _ => {
      let (target_type, _) = arg_mbt_type(
        typedef_def.type_,
        typedef_def.name,
        "",
        "",
        self.type_registry,
      )
      [Emit::TypedefAlias(typedef_def.name, target_type.name())]
    }
  }
  emits.push_iter(typedef_emits.iter())
  (filename, emits)
}

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
      #|
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
      #|
      #|
      #|/// [MyUnion](https://developer.mozilla.org/en-US/docs/Web/API/MyUnion)
      #|#external
      #|pub type MyUnion
      #|
      #|pub impl TJsValue for MyUnion with to_js(self: MyUnion) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for MyUnion with from_js_any(value : JsAny) -> MyUnion = "%identity"
      #|
      #|pub(open) trait TMyUnion {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub fn[T : TMyUnion + FromJsAny] MyUnion::into(self : MyUnion) -> T {
      #|  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
      #|}
      #|
      #|pub fn[T : TMyUnion] MyUnion::from(value : T) -> MyUnion = "%identity"
      #|
      #|pub impl TMyUnion for MyUnion with to_js(self : MyUnion) -> JsValue = "%identity"
      #|
      #|pub impl TMyUnion for String with to_js(self : String) -> JsValue = "%identity"
      #|
      #|pub impl TMyUnion for Function with to_js(self : Function) -> JsValue = "%identity"
      #|
      #|pub impl TMyUnion for Unit with to_js(self : Unit) -> JsValue = "%identity"
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
      #|
      #|
      #|/// [MyUnion](https://developer.mozilla.org/en-US/docs/Web/API/MyUnion)
      #|#external
      #|pub type MyUnion
      #|
      #|pub impl TJsValue for MyUnion with to_js(self: MyUnion) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for MyUnion with from_js_any(value : JsAny) -> MyUnion = "%identity"
      #|
      #|pub(open) trait TMyUnion {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub fn[T : TMyUnion + FromJsAny] MyUnion::into(self : MyUnion) -> T {
      #|  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
      #|}
      #|
      #|pub fn[T : TMyUnion] MyUnion::from(value : T) -> MyUnion = "%identity"
      #|
      #|pub impl TMyUnion for MyUnion with to_js(self : MyUnion) -> JsValue = "%identity"
      #|
      #|pub impl TMyUnion for MyInterface with to_js(self : MyInterface) -> JsValue = "%identity"
      #|
      #|pub impl TMyUnion for String with to_js(self : String) -> JsValue = "%identity"
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
      #|
      #|
      #|pub type MyNullableInterface = MyInterface
    ),
  )
  inspect(multi.js_ffi)
  inspect(multi.wasm_ffi)
}
