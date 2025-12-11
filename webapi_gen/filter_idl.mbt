///|
/// Filter IDL with only whitelisted interfaces, dictionaries, enums, typedefs, and callbacks.
fn filter_idl(
  config : GeneratorConfig,
  defns : Array[DefinitionExtendedAttributes],
) -> Array[DefinitionExtendedAttributes] {
  let core_interfaces = @hashset.from_iter(config.core_interfaces.iter())
  let excluded_callbacks = @hashset.from_iter(config.excluded_callbacks.iter())
  let excluded_typedefs = @hashset.from_iter(config.excluded_typedefs.iter())
  let filtered_defns = []
  fn is_dictionary_prefix_excluded(name : String) -> Bool {
    config.excluded_dictionary_prefixes
    .iter()
    .any(prefix => name.has_prefix(prefix))
  }

  for def in defns {
    match def.definition {
      Interface(iface) if core_interfaces.contains(iface.name) =>
        filtered_defns.push(def)
      PartialInterface(piface) if core_interfaces.contains(piface.name) =>
        filtered_defns.push(def)
      Mixin(mxn) if core_interfaces.contains(mxn.name) =>
        filtered_defns.push(def)
      PartialMixin(pmxn) if core_interfaces.contains(pmxn.name) =>
        filtered_defns.push(def)
      Namespace(_) => abort("namespaces are not supported")
      PartialNamespace(_) => abort("namespaces are not supported")
      Dictionary(dict) if !is_dictionary_prefix_excluded(dict.name) =>
        filtered_defns.push(def)
      PartialDictionary(pdict) if !is_dictionary_prefix_excluded(pdict.name) =>
        filtered_defns.push(def)
      Typedef(td) if !excluded_typedefs.contains(td.name) =>
        filtered_defns.push(def)
      CallbackFunction(cbf) if !excluded_callbacks.contains(cbf.name) =>
        filtered_defns.push(def)
      CallbackInterface(cbi) if !excluded_callbacks.contains(cbi.name) =>
        filtered_defns.push(def)
      Enum(_) | Includes(_) => filtered_defns.push(def)
      _ => ()
    }
  }
  filtered_defns
}

///|
test "filter_idl with empty config returns all types" {
  let widl : String =
    #|interface Element {};
    #|interface Node {};
    #|dictionary EventInit {};
    #|enum ScrollBehavior { "auto", "smooth" };
  let defs = @parser.parse(widl)
  let config = @config.load_config_from_string(
    (
      #|{
      #| "core_specs": [],
      #| "core_interfaces": [],
      #|  "excluded_callbacks": [],
      #|  "excluded_typedefs": [],
      #|  "excluded_dictionary_prefixes": []
      #|}
    ),
  )
  let filtered = filter_idl(config, defs)
  @json.inspect(filtered, content=[
    {
      "extended_attributes": [],
      "definition": ["Dictionary", { "name": "EventInit", "members": [] }],
    },
    {
      "extended_attributes": [],
      "definition": [
        "Enum",
        { "name": "ScrollBehavior", "values": ["auto", "smooth"] },
      ],
    },
  ])
}

///|
test "filter_idl filters interfaces by whitelist" {
  let widl : String =
    #|interface Element {};
    #|interface Node {};
    #|interface Document {};
  let defs = @parser.parse(widl)
  let config : GeneratorConfig = @config.load_config_from_string(
    (
      #|{
      #| "core_specs": [],
      #| "core_interfaces": ["Element", "Node"],
      #|  "excluded_callbacks": [],
      #|  "excluded_typedefs": [],
      #|  "excluded_dictionary_prefixes": []
      #|}
    ),
  )
  let filtered = filter_idl(config, defs)
  @json.inspect(filtered, content=[
    {
      "extended_attributes": [],
      "definition": ["Interface", { "name": "Element", "members": [] }],
    },
    {
      "extended_attributes": [],
      "definition": ["Interface", { "name": "Node", "members": [] }],
    },
  ])
}

///|
test "filter_idl excludes callbacks" {
  let widl : String =
    #|callback EventListener = undefined (Event event);
    #|callback MutationCallback = undefined (sequence<MutationRecord> mutations);
  let defs = @parser.parse(widl)
  let config : GeneratorConfig = @config.load_config_from_string(
    (
      #|{
      #| "core_specs": [],
      #| "core_interfaces": [],
      #| "excluded_callbacks": ["MutationCallback"],
      #| "excluded_typedefs": [],
      #| "excluded_dictionary_prefixes": []
      #|}
    ),
  )
  let filtered = filter_idl(config, defs)
  @json.inspect(filtered, content=[
    {
      "extended_attributes": [],
      "definition": [
        "CallbackFunction",
        {
          "name": "EventListener",
          "return_type": "Undefined",
          "arguments": [
            {
              "extended_attributes": [],
              "type_": {
                "extended_attributes": [],
                "type_": ["Identifier", "Event"],
              },
              "name": "event",
              "optional": false,
              "variadic": false,
            },
          ],
        },
      ],
    },
  ])
}

///|
test "filter_idl excludes typedefs" {
  let widl : String =
    #|typedef (DOMString or Function) EventHandler;
    #|typedef unsigned long long DOMTimeStamp;
  let defs = @parser.parse(widl)
  let config : GeneratorConfig = @config.load_config_from_string(
    (
      #|{
      #| "core_specs": [],
      #| "core_interfaces": [],
      #| "excluded_callbacks": ["MutationCallback"],
      #| "excluded_typedefs": ["EventHandler"],
      #| "excluded_dictionary_prefixes": []      
      #|}
    ),
  )
  let filtered = filter_idl(config, defs)
  @json.inspect(filtered, content=[
    {
      "extended_attributes": [],
      "definition": [
        "Typedef",
        { "type_": "UnsignedLongLong", "name": "DOMTimeStamp" },
      ],
    },
  ])
}

///|
test "filter_idl excludes dictionaries by prefix" {
  let widl : String =
    #|dictionary EventInit {};
    #|dictionary ElementCreationOptions {};
    #|dictionary ElementDefinitionOptions {};
  let defs = @parser.parse(widl)
  let config : GeneratorConfig = @config.load_config_from_string(
    (
      #|{
      #| "core_specs": [],
      #| "core_interfaces": [],
      #| "excluded_callbacks": ["MutationCallback"],
      #| "excluded_typedefs": ["EventHandler"],
      #| "excluded_dictionary_prefixes": ["Element"]
      #|}
    ),
  )
  let filtered = filter_idl(config, defs)
  @json.inspect(filtered, content=[
    {
      "extended_attributes": [],
      "definition": ["Dictionary", { "name": "EventInit", "members": [] }],
    },
  ])
}
