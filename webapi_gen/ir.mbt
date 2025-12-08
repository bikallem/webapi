///|
/// Merged interface with all partials and mixin members combined
struct MergedInterface {
  name : String
  inherits : Array[String]
  members : Array[InterfaceMember]
  is_mixin : Bool // TODO: why do we need this if this is a merged Interface, How about is_partial?
} derive(Show, Eq, ToJson)

///|
fn MergedInterface::new(
  name : String,
  inherits? : Array[String] = [],
  members? : Array[InterfaceMember] = [],
  is_mixin? : Bool = false,
) -> MergedInterface {
  MergedInterface::{ name, inherits, members, is_mixin }
}

///|
/// Merged Dictionary with all partials combined.
struct MergedDictionary {
  name : String
  inherits : String?
  members : Array[DictionaryMember]
} derive(Show, Eq, ToJson)

///|
fn MergedDictionary::new(
  name : String,
  inherits? : String,
  members? : Array[DictionaryMember] = [],
) -> MergedDictionary {
  MergedDictionary::{ name, inherits, members }
}
