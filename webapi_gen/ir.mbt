///|
/// Merged interface IR with all partials and mixin members combined
struct MergedInterfaceIR {
  name : String
  members : Array[InterfaceMember]
  inheritance : String?
} derive(Show, ToJson)

///|
fn MergedInterfaceIR::new(
  name : String,
  members : Array[InterfaceMember],
  inheritance : String?,
) -> MergedInterfaceIR {
  MergedInterfaceIR::{ name, inheritance, members }
}

///|
fn MergedInterfaceIR::merge(
  self : MergedInterfaceIR,
  members : Array[InterfaceMember],
  inheritance : String?,
) -> MergedInterfaceIR {
  let inheritance = match inheritance {
    Some(_) => inheritance
    None => self.inheritance
  }
  { ..self, members: self.members + members, inheritance }
}

///|
/// Merged mixin IR with all partials combined.
struct MergedMixinIR {
  name : String
  members : Array[InterfaceMember]
} derive(Show, ToJson)

///|
fn MergedMixinIR::new(
  name : String,
  members : Array[InterfaceMember],
) -> MergedMixinIR {
  MergedMixinIR::{ name, members }
}

///|
fn MergedMixinIR::merge(
  self : MergedMixinIR,
  members : Array[InterfaceMember],
) -> MergedMixinIR {
  { ..self, members: self.members + members }
}

///|
/// Merged Dictionary with all partials combined.
struct PartialMergedDictionaryIR {
  name : String
  members : Array[DictionaryMember]
  inheritance : String?
} derive(Show, ToJson)

///|
fn PartialMergedDictionaryIR::new(
  name : String,
  members : Array[DictionaryMember],
  inheritance : String?,
) -> PartialMergedDictionaryIR {
  PartialMergedDictionaryIR::{ name, inheritance, members }
}

///|
fn PartialMergedDictionaryIR::merge(
  self : PartialMergedDictionaryIR,
  members : Array[DictionaryMember],
  inheritance : String?,
) -> PartialMergedDictionaryIR {
  let inheritance = match inheritance {
    None => self.inheritance
    Some(_) => inheritance
  }
  { ..self, members: self.members + members, inheritance }
}
