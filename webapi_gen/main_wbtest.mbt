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
      #|idl_dir = ""
      #|output_dir = ""
      #|templates_dir = ""
      #|template_files = []
      #|core_specs = []
      #|excluded_interfaces = ["Element"]
      #|excluded_callbacks = []
      #|excluded_typedefs = []
      #|excluded_dictionary_prefixes = []
      #|
    ),
  )
  let filtered = filter_idl(config, defs, ignore)
  @json.inspect(filtered, content=[
    {
      "extended_attributes": [],
      "definition": ["Interface", { "name": "Node", "members": [] }],
    },
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
  let config : @config.Config = @config.load_config_from_string(
    (
      #|idl_dir = ""
      #|output_dir = ""
      #|templates_dir = ""
      #|template_files = []
      #|core_specs = []
      #|excluded_interfaces = ["Element", "Node"]
      #|excluded_callbacks = []
      #|excluded_typedefs = []
      #|excluded_dictionary_prefixes = []
      #|
    ),
  )
  let filtered = filter_idl(config, defs, ignore)
  @json.inspect(filtered, content=[
    {
      "extended_attributes": [],
      "definition": ["Interface", { "name": "Document", "members": [] }],
    },
  ])
}

///|
test "filter_idl excludes callbacks" {
  let widl : String =
    #|callback EventListener = undefined (Event event);
    #|callback MutationCallback = undefined (sequence<MutationRecord> mutations);
  let defs = @parser.parse(widl)
  let config : @config.Config = @config.load_config_from_string(
    (
      #|idl_dir = ""
      #|output_dir = ""
      #|templates_dir = ""
      #|template_files = []
      #|core_specs = []
      #|excluded_interfaces = []
      #|excluded_callbacks = ["MutationCallback"]
      #|excluded_typedefs = []
      #|excluded_dictionary_prefixes = []
      #|
    ),
  )
  let filtered = filter_idl(config, defs, ignore)
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
  let config : @config.Config = @config.load_config_from_string(
    (
      #|idl_dir = ""
      #|output_dir = ""
      #|templates_dir = ""
      #|template_files = []
      #|core_specs = []
      #|excluded_interfaces = []
      #|excluded_callbacks = ["MutationCallback"]
      #|excluded_typedefs = ["EventHandler"]
      #|excluded_dictionary_prefixes = []
      #|
    ),
  )
  let filtered = filter_idl(config, defs, ignore)
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
  let config : @config.Config = @config.load_config_from_string(
    (
      #|idl_dir = ""
      #|output_dir = ""
      #|templates_dir = ""
      #|template_files = []
      #|core_specs = []
      #|excluded_interfaces = []
      #|excluded_callbacks = ["MutationCallback"]
      #|excluded_typedefs = ["EventHandler"]
      #|excluded_dictionary_prefixes = ["Element"]
      #|
    ),
  )
  let filtered = filter_idl(config, defs, ignore)
  @json.inspect(filtered, content=[
    {
      "extended_attributes": [],
      "definition": ["Dictionary", { "name": "EventInit", "members": [] }],
    },
  ])
}
