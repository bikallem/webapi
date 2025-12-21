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
  let filename = Filename("\{to_snake_case(name)}_typedef.mbt")
  let typedef_def = self.idl.typedefs[name]
  let typedef_emit = match typedef_def.type_ {
    Union(members) => {
      let member_types = filter_typedef_union_members(
        members,
        self.type_registry,
      )
      Emit::TypedefUnion(typedef_def.name, member_types)
    }
    _ => {
      let target_type = idl_to_mbt_type(typedef_def.type_)
      Emit::TypedefAlias(typedef_def.name, target_type)
    }
  }
  (filename, [typedef_emit])
}

///|
/// Filters union members to produce MoonBit type names, removing duplicates,
/// Unit, and skip types.
fn filter_typedef_union_members(
  members : Array[@parser.TypeWithExtendedAttributes],
  type_registry : @type_registry.TypeRegistry,
) -> Array[String] {
  let seen : @hashset.HashSet[String] = @hashset.new()
  let result : Array[String] = []
  for mem in members {
    let mbt_type = typedef_type_to_mbt(mem.type_, type_registry)
    if mbt_type != "Unit" && not(seen.contains(mbt_type)) {
      seen.add(mbt_type)
      result.push(mbt_type)
    }
  }
  result
}

///|
/// Map WebIDL type to MoonBit type string for typedef unions.
/// Interfaces become trait references (&TName).
fn typedef_type_to_mbt(
  idl_type : @parser.Type,
  type_registry : @type_registry.TypeRegistry,
) -> String {
  match idl_type {
    Identifier(name) => name
    Nullable(t) => typedef_type_to_mbt(t, type_registry)
    _ => idl_to_mbt_type(idl_type)
  }
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
  let code = mbt_code_gen(emits)
  @json.inspect(filename, content=["Filename", "my_string_typedef.mbt"])
  inspect(code, content="pub type MyString = String")
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
  let code = mbt_code_gen(emits)
  inspect(
    filename,
    content=(
      #|Filename("my_union_typedef.mbt")
    ),
  )
  inspect(
    code,
    content=(
      #|pub(open) trait TMyUnion {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub fn[T : TMyUnion] TMyUnion::into(self : TMyUnion) -> T = "%identity"
      #|
      #|pub impl TMyUnion for String with to_js(self : String) -> JsValue = "%identity"
      #|
      #|pub impl TMyUnion for Function with to_js(self : Function) -> JsValue = "%identity"
    ),
  )
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
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|pub(open) trait TMyUnion {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub fn[T : TMyUnion] TMyUnion::into(self : TMyUnion) -> T = "%identity"
      #|
      #|pub impl TMyUnion for MyInterface with to_js(self : MyInterface) -> JsValue = "%identity"
      #|
      #|pub impl TMyUnion for String with to_js(self : String) -> JsValue = "%identity"
    ),
  )
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
  let code = mbt_code_gen(emits)
  inspect(code, content="pub type MyNullableInterface = JsValue")
}
