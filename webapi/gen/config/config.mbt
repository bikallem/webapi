///|
/// Generator configuration loaded from 'config.json'.
pub struct Config {
  idl_dir : String
  output_dir : String
  templates_dir : String
  core_specs : @hashset.HashSet[String]
  excluded_interfaces : @hashset.HashSet[String]
  excluded_callbacks : @hashset.HashSet[String]
  excluded_typedefs : @hashset.HashSet[String]
  excluded_dictionary_prefixes : @hashset.HashSet[String]
  dictionary_member_injection : Map[String, String]
} derive(Debug, ToJson)

///|
/// Raw JSON-deserializable config before converting HashSet fields.
priv struct RawConfig {
  idl_dir : String
  output_dir : String
  templates_dir : String
  core_specs : Array[String]
  excluded_interfaces : Array[String]
  excluded_callbacks : Array[String]
  excluded_typedefs : Array[String]
  excluded_dictionary_prefixes : Array[String]
  dictionary_member_injection : Map[String, String]
} derive(FromJson)

///|
pub fn load_config_from_string(content : String) -> Config raise {
  let json = @json.parse(content) catch {
    e => fail("Invalid config JSON: \{e}")
  }
  let raw : RawConfig = @json.from_json(json) catch {
    e => fail("Invalid config structure: \{e}")
  }
  {
    idl_dir: raw.idl_dir,
    output_dir: raw.output_dir,
    templates_dir: raw.templates_dir,
    core_specs: @hashset.from_array(raw.core_specs),
    excluded_interfaces: @hashset.from_array(raw.excluded_interfaces),
    excluded_callbacks: @hashset.from_array(raw.excluded_callbacks),
    excluded_typedefs: @hashset.from_array(raw.excluded_typedefs),
    excluded_dictionary_prefixes: @hashset.from_array(
      raw.excluded_dictionary_prefixes,
    ),
    dictionary_member_injection: raw.dictionary_member_injection,
  }
}

///|
test "load_from_string with invalid JSON raises" {
  let invalid_json = "{ invalid"
  try {
    let _ : Config = load_config_from_string(invalid_json)
    fail("expected error")
  } catch {
    e => assert_true(e.to_string().contains("Invalid config JSON"))
  }
}

///|
test "load_from_string with valid JSON" {
  let valid_json =
    #|{
    #|  "idl_dir": "node_modules/@webref/idl",
    #|  "output_dir": "../src",
    #|  "templates_dir": "base.mbt",
    #|  "core_specs": ["dom", "html"],
    #|  "excluded_interfaces": ["Element", "Node"],
    #|  "excluded_callbacks": ["MutationCallback"],
    #|  "excluded_typedefs": ["EventHandler"],
    #|  "excluded_dictionary_prefixes": ["ElementCreationOptions"],
    #|  "dictionary_member_injection": {
    #|    "EffectTiming": "OptionalEffectTiming"
    #|  }
    #|}
  let cfg = load_config_from_string(valid_json)
  json_inspect(cfg, content={
    "idl_dir": "node_modules/@webref/idl",
    "output_dir": "../src",
    "templates_dir": "base.mbt",
    "core_specs": ["dom", "html"],
    "excluded_interfaces": ["Element", "Node"],
    "excluded_callbacks": ["MutationCallback"],
    "excluded_typedefs": ["EventHandler"],
    "excluded_dictionary_prefixes": ["ElementCreationOptions"],
    "dictionary_member_injection": { "EffectTiming": "OptionalEffectTiming" },
  })
}

///|
test "load_from_string with empty arrays" {
  let empty_json =
    #|{
    #|  "idl_dir": "",
    #|  "output_dir": "",
    #|  "templates_dir": "",
    #|  "core_specs": [],
    #|  "excluded_interfaces": [],
    #|  "excluded_callbacks": [],
    #|  "excluded_typedefs": [],
    #|  "excluded_dictionary_prefixes": [],
    #|  "dictionary_member_injection": {}
    #|}
  let cfg = load_config_from_string(empty_json)
  json_inspect(cfg, content={
    "idl_dir": "",
    "output_dir": "",
    "templates_dir": "",
    "core_specs": [],
    "excluded_interfaces": [],
    "excluded_callbacks": [],
    "excluded_typedefs": [],
    "excluded_dictionary_prefixes": [],
    "dictionary_member_injection": {},
  })
}
