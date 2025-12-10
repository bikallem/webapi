///|
/// Filtered IDL with only whitelisted interfaces, dictionaries, enums, typedefs, and callbacks.
struct FilteredIdl {
  interfaces : Map[String, PartialMergedInterfaceIR]
  dictionaries : Map[String, MergedDictionaryIR]
  enums : Map[String, EnumDefinition]
  typedefs : Map[String, TypedefDefinition]
  callbacks : Map[String, CallbackFunctionDefinition]
  registry : TypeRegistry
} derive(Show, ToJson)

///|
fn filter_idl(merged : MergedIdl, config : GeneratorConfig) -> FilteredIdl {
  let core_interfaces = @hashset.from_iter(config.core_interfaces.iter())
  let excluded_callbacks = @hashset.from_iter(config.excluded_callbacks.iter())
  let excluded_typedefs = @hashset.from_iter(config.excluded_typedefs.iter())

  // Filter interfaces by whitelist
  let interfaces = merged.interfaces
    .iter()
    .filter(entry => core_interfaces.contains(entry.0))
    |> Map::from_iter

  // Filter dictionaries by prefix exclusion
  let dictionaries = merged.dictionaries
    .iter()
    .filter(dict => {
      let name = dict.0
      !config.excluded_dictionary_prefixes
      .iter()
      .any(prefix => name.has_prefix(prefix))
    })
    |> Map::from_iter

  // Filter typedefs by exclusion list
  let typedefs = merged.typedefs
    .iter()
    .filter(td => !excluded_typedefs.contains(td.0))
    |> Map::from_iter

  // Filter callbacks by exclusion list
  let callbacks = merged.callbacks
    .iter()
    .filter(cb => !excluded_callbacks.contains(cb.0))
    |> Map::from_iter

  // Build type registry from filtered types
  let registry : TypeRegistry = {
    interface_names: @hashset.from_iter(interfaces.keys()),
    dictionary_names: @hashset.from_iter(dictionaries.keys()),
    enum_names: @hashset.from_iter(merged.enums.keys()),
    typedef_names: @hashset.from_iter(typedefs.keys()),
    callback_names: @hashset.from_iter(callbacks.keys()),
  }
  FilteredIdl::{
    interfaces,
    dictionaries,
    enums: merged.enums,
    typedefs,
    callbacks,
    registry,
  }
}
