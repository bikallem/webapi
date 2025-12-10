///|
test "filter_idl with empty config returns all types" {
  let widl : String =
    #|interface Element {};
    #|interface Node {};
    #|dictionary EventInit {};
    #|enum ScrollBehavior { "auto", "smooth" };
  let defs = @parser.parse(widl)
  let visitor = PartialMergeVisitor::new()
  visitor.visit(defs)
  let merged = MergedIdl::from(visitor)
  let config = GeneratorConfig::new()
  let filtered = filter_idl(merged, config)
  @json.inspect(filtered, content={
    "interfaces": {},
    "dictionaries": { "EventInit": { "name": "EventInit", "members": [] } },
    "enums": {
      "ScrollBehavior": {
        "name": "ScrollBehavior",
        "values": ["auto", "smooth"],
      },
    },
    "typedefs": {},
    "callbacks": {},
    "registry": {
      "interface_names": [],
      "dictionary_names": ["EventInit"],
      "enum_names": ["ScrollBehavior"],
      "typedef_names": [],
      "callback_names": [],
    },
  })
}

///|
test "filter_idl filters interfaces by whitelist" {
  let widl : String =
    #|interface Element {};
    #|interface Node {};
    #|interface Document {};
  let defs = @parser.parse(widl)
  let visitor = PartialMergeVisitor::new()
  visitor.visit(defs)
  let merged = MergedIdl::from(visitor)
  let config : GeneratorConfig = {
    ..GeneratorConfig::new(),
    core_interfaces: ["Element", "Node"],
  }
  let filtered = filter_idl(merged, config)
  @json.inspect(filtered, content={
    "interfaces": {
      "Element": { "name": "Element", "members": [] },
      "Node": { "name": "Node", "members": [] },
    },
    "dictionaries": {},
    "enums": {},
    "typedefs": {},
    "callbacks": {},
    "registry": {
      "interface_names": ["Element", "Node"],
      "dictionary_names": [],
      "enum_names": [],
      "typedef_names": [],
      "callback_names": [],
    },
  })
}

///|
test "filter_idl excludes callbacks" {
  let widl : String =
    #|callback EventListener = undefined (Event event);
    #|callback MutationCallback = undefined (sequence<MutationRecord> mutations);
  let defs = @parser.parse(widl)
  let visitor = PartialMergeVisitor::new()
  visitor.visit(defs)
  let merged = MergedIdl::from(visitor)
  let config : GeneratorConfig = {
    ..GeneratorConfig::new(),
    excluded_callbacks: ["MutationCallback"],
  }
  let filtered = filter_idl(merged, config)
  @json.inspect(filtered, content={
    "interfaces": {},
    "dictionaries": {},
    "enums": {},
    "typedefs": {},
    "callbacks": {
      "EventListener": {
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
    },
    "registry": {
      "interface_names": [],
      "dictionary_names": [],
      "enum_names": [],
      "typedef_names": [],
      "callback_names": ["EventListener"],
    },
  })
}

///|
test "filter_idl excludes typedefs" {
  let widl : String =
    #|typedef (DOMString or Function) EventHandler;
    #|typedef unsigned long long DOMTimeStamp;
  let defs = @parser.parse(widl)
  let visitor = PartialMergeVisitor::new()
  visitor.visit(defs)
  let merged = MergedIdl::from(visitor)
  let config : GeneratorConfig = {
    ..GeneratorConfig::new(),
    excluded_typedefs: ["EventHandler"],
  }
  let filtered = filter_idl(merged, config)
  @json.inspect(filtered, content={
    "interfaces": {},
    "dictionaries": {},
    "enums": {},
    "typedefs": {
      "DOMTimeStamp": { "type_": "UnsignedLongLong", "name": "DOMTimeStamp" },
    },
    "callbacks": {},
    "registry": {
      "interface_names": [],
      "dictionary_names": [],
      "enum_names": [],
      "typedef_names": ["DOMTimeStamp"],
      "callback_names": [],
    },
  })
}

///|
test "filter_idl excludes dictionaries by prefix" {
  let widl : String =
    #|dictionary EventInit {};
    #|dictionary ElementCreationOptions {};
    #|dictionary ElementDefinitionOptions {};
  let defs = @parser.parse(widl)
  let visitor = PartialMergeVisitor::new()
  visitor.visit(defs)
  let merged = MergedIdl::from(visitor)
  let config : GeneratorConfig = {
    ..GeneratorConfig::new(),
    excluded_dictionary_prefixes: ["Element"],
  }
  let filtered = filter_idl(merged, config)
  @json.inspect(filtered, content={
    "interfaces": {},
    "dictionaries": { "EventInit": { "name": "EventInit", "members": [] } },
    "enums": {},
    "typedefs": {},
    "callbacks": {},
    "registry": {
      "interface_names": [],
      "dictionary_names": ["EventInit"],
      "enum_names": [],
      "typedef_names": [],
      "callback_names": [],
    },
  })
}

///|
test "TypeRegistry::contains checks all categories" {
  let registry : TypeRegistry = {
    interface_names: @hashset.from_iter(["Element"].iter()),
    dictionary_names: @hashset.from_iter(["EventInit"].iter()),
    enum_names: @hashset.from_iter(["ScrollBehavior"].iter()),
    typedef_names: @hashset.from_iter(["DOMTimeStamp"].iter()),
    callback_names: @hashset.from_iter(["EventListener"].iter()),
  }
  inspect(registry.contains("Element"), content="true")
  inspect(registry.contains("EventInit"), content="true")
  inspect(registry.contains("ScrollBehavior"), content="true")
  inspect(registry.contains("DOMTimeStamp"), content="true")
  inspect(registry.contains("EventListener"), content="true")
  inspect(registry.contains("Unknown"), content="false")
}
