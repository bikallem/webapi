///|
pub fn emit_interface(
  interface : @partial_merged.PartialMergedInterface,
) -> Array[Emit] {
  let emits = []
  emits.push(Emit::External(interface.name))
  emits.push(Emit::IntoMethod(interface.name))
  emits.push(Emit::ImplTrait(interface.name))

  // Generate trait method args
  fn fill_method_args(
    method_args : Array[@parser.Argument],
    method_name : String,
    output_args : Array[MethodArg],
  ) {
    for arg in method_args {
      let (type_, arg_emits) = arg_type(
        arg.type_.type_,
        method_name,
        arg.name,
        @type_registry.TypeRegistry::new([]), // empty registry since we don't need it here
      )
      // Push any additional emits needed for the arg type, e.g. union arg traits
      emits.push_iter(arg_emits.iter())
      output_args.push(MethodArg::{
        name: safe_identifier(arg.name),
        type_,
        optional: arg.optional,
        default_value: arg.default_value.map(dv => arg_default_value(
          dv,
          arg.type_.type_,
        )),
      })
    }
  }

  let trait_methods = []
  for mem in interface.members {
    match mem.interface_member {
      Constructor(ctor) => {
        let args = []
        let method_name = "new"
        fill_method_args(ctor.arguments, method_name, args)
        emits.push(Emit::ConstructorMethod(interface.name, args))
      }
      RegularOperation(op) => {
        if op.static_ {
          continue // TODO: determine how to map static methods, perhaps to external type?
        }
        // trait method args
        let args = [
          MethodArg::{
            name: "self",
            type_: ArgType::Self,
            optional: false,
            default_value: None,
          },
        ]
        let method_name = safe_identifier(op.name)
        fill_method_args(op.arguments, method_name, args)
        // trait method
        let trait_method = TraitMethod::{
          method_name,
          return_type: op.return_type,
          args,
        }
        trait_methods.push(trait_method)
      }
      Attribute(_) => ()
      _ => ()
    }
  }
  let parent_traits = ["TJsValue"]
  match interface.inheritance {
    None => ()
    Some(parent) => parent_traits.push(parent)
  }
  emits.push(
    Emit::TraitDef(TraitDef::{
      trait_name: interface.name,
      parent_traits,
      methods: trait_methods,
    }),
  )
  emits
}

///|
pub fn emit_dictionary(
  dict : @flattened_idl.MergedDictionaryIR,
  type_registry : @type_registry.TypeRegistry,
) -> Array[Emit] {
  let emits = [Emit::External(dict.name), Emit::ImplTrait(dict.name)]

  // Constructor method args
  let args = []
  for mem in dict.members {
    let (type_, arg_emits) = arg_type(
      mem.type_,
      dict.name,
      mem.name,
      type_registry,
    )
    // Push any additional emits needed for the arg type, e.g. union arg traits
    emits.push_iter(arg_emits.iter())
    args.push(MethodArg::{
      name: safe_identifier(mem.name),
      type_,
      optional: !mem.required,
      default_value: mem.default_value.map(dv => arg_default_value(
        dv,
        mem.type_,
      )),
    })
  }
  emits.push(Emit::ConstructorMethod(dict.name, args)) // empty constructor
  emits.push(Emit::EmptyMethod(dict.name))
  emits
}

///|
fn arg_type(
  type_ : @parser.Type,
  method_name : String,
  arg_name : String,
  type_registry : @type_registry.TypeRegistry,
) -> (ArgType, Array[Emit]) {
  let emits = []
  match type_ {
    Union(options) => {
      let type_name = "T\{to_pascal_case(method_name)}\{to_pascal_case(arg_name)}Arg"
      emits.push(Emit::UnionArgTrait(type_name))
      for option in options {
        emits.push(Emit::UnionArgTraitImpl(option.type_, type_name))
      }
      (ArgType::Resolved("&\{type_name}"), emits)
    }
    Identifier(name) => {
      let name = if type_registry.is_interface(name) {
        "&T\{name}"
      } else {
        name
      }
      (ArgType::Resolved(name), emits)
    }
    Nullable(type_) =>
      // TODO: what happens if the nullable type is a union and none of the options are identifiers?
      arg_type(type_, method_name, arg_name, type_registry)
    _ => (ArgType::Type(type_), emits)
  }
}

///|
pub enum Emit {
  External(String) // External type, eg. #external EventTarget
  IntoMethod(String) // eg. pub fn[T: TEventTarget] EventTarget::into(self : EventTarget) -> T = "%identity"
  EmptyMethod(String) // eg. pub fn Event::empty() -> EventTarget
  ImplTrait(String) // eg. impl TEventTarget for EventTarget
  TraitDef(TraitDef) // eg. trait TEventTarget { ... }
  UnionArgTrait(String) // eg. trait TEventTargetArg { ... }
  UnionArgTraitImpl(@parser.Type, String) // eg. impl TEventTargetArg for TEventTarget
  ConstructorMethod(String, Array[MethodArg]) // eg. pub fn[T: TEventTarget] EventTarget::new(self : EventTarget) -> T = "%identity"
}

///|
pub struct TraitDef {
  trait_name : String
  parent_traits : Array[String]
  methods : Array[TraitMethod]
}

///|
pub struct TraitMethod {
  method_name : String
  return_type : @parser.Type
  args : Array[MethodArg]
}

///|
pub struct MethodArg {
  name : String
  type_ : ArgType
  optional : Bool
  default_value : String?
}

///|
pub enum ArgType {
  Self
  Type(@parser.Type)
  Resolved(String) // Already resolved type, no need for further mapping
}

///|
/// Moonbit reserved keywords that need escaping
let keywords : @hashset.HashSet[String] = [
    "fn", "let", "mut", "if", "else", "match", "while", "for", "break", "continue",
    "return", "struct", "enum", "type", "trait", "impl", "pub", "priv", "true", "false",
    "as", "is", "in", "loop", "test", "raise", "try", "catch",
  ]
  |> @hashset.from_array

///|
/// Escape MoonBit reserved keywords by appending underscore.
fn escape_keyword(name : String) -> String {
  match keywords.contains(name) {
    true => "\{name}_"
    false => name
  }
}

///|
/// Generate a safe MoonBit identifier from a WebIDL name.
/// Handles keywords and invalid characters.
fn safe_identifier(name : String) -> String {
  escape_keyword(to_snake_case(name))
}

///|
/// Convert a string to snake case
fn is_upper(c : Char) -> Bool {
  c >= 'A' && c <= 'Z'
}

///|
fn is_lower(c : Char) -> Bool {
  c >= 'a' && c <= 'z'
}

///|
fn to_lower_char(c : Char) -> Char {
  if is_upper(c) {
    Int::to_char(c.to_int() + 32).unwrap()
  } else {
    c
  }
}

///|
/// Convert a string to snake case
/// Handles acronyms: DOMImplementation -> dom_implementation
fn to_snake_case(s : String) -> String {
  let buf = StringBuilder::new()
  let chars = []
  for c in s {
    chars.push(c)
  }
  for i, c in chars {
    if is_upper(c) {
      if i > 0 {
        let prev = chars[i - 1]
        let mut split = false
        if is_lower(prev) {
          split = true
        } else if is_upper(prev) && i + 1 < chars.length() {
          let next = chars[i + 1]
          if is_lower(next) {
            split = true
          }
        }
        // Prevent double underscore if input already has underscore
        if prev == '_' {
          split = false
        }
        if split {
          buf.write_char('_')
        }
      }
      buf.write_char(to_lower_char(c))
    } else {
      buf.write_char(c)
    }
  }
  buf.to_string()
}

///|
/// Convert a string to PascalCase
fn to_pascal_case(s : String) -> String {
  let buf = StringBuilder::new()
  let mut capitalize_next = true
  for c in s {
    match c {
      '_' | '-' | ' ' => capitalize_next = true
      c if capitalize_next => {
        match c {
          'a'..='z' => buf.write_char(Int::to_char(c.to_int() - 32).unwrap()) // uppercase
          c => buf.write_char(c)
        }
        capitalize_next = false
      }
      c => buf.write_char(c)
    }
  }
  buf.to_string()
}

///|
fn arg_default_value(
  default_value : @parser.DefaultValue,
  arg_type : @parser.Type,
) -> String {
  let mbt_type = match arg_type {
    Identifier(name) => name
    Union(options) =>
      // if the arg type is a union, find the first identifier option and return it
      loop options {
        [] => "JsValue" // shouldn't happen
        [o, ..] if o.type_ is Identifier(name) => break name
        rest => continue rest
      }
    _ => "JsValue" // shouldn't happen
  }
  match default_value {
    Null => "\{mbt_type}::null()"
    EmptyObject => "\{mbt_type}::empty()" // A dictionary type
    EmptySequence => "[]"
    String(s) => "\"\{s}\""
    ConstValue(c) =>
      match c {
        Boolean(b) => b
        Integer(i) => i
        Float(Float(f)) => f
        Float(Infinity) => "@float.infinity"
        Float(NegInfinity) => "@float.neg_infinity"
        Float(NaN) => "@float.not_a_number"
      }
    Undefined => "\{mbt_type}::undefined()"
  }
}
