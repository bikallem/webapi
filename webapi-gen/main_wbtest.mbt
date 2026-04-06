///|
fn clear_test_dir(path : String) -> Unit raise {
  if @fs.path_exists(path) {
    for entry in @fs.read_dir(path) {
      let entry_path = "\{path}/\{entry}"
      if @fs.is_file(entry_path) {
        @fs.remove_file(entry_path)
      } else if @fs.is_dir(entry_path) {
        @fs.remove_dir(entry_path)
      }
    }
    @fs.remove_dir(path)
  }
}

///|
fn empty_config_json(
  excluded_interfaces? : Array[String] = [],
  excluded_callbacks? : Array[String] = [],
  excluded_typedefs? : Array[String] = [],
  excluded_dictionary_prefixes? : Array[String] = [],
) -> String {
  let cfg : Json = {
    "idl_dir": "",
    "output_dir": "",
    "templates_dir": "",
    "core_specs": Json::array([]),
    "excluded_interfaces": Json::array(excluded_interfaces.map(Json::string)),
    "excluded_callbacks": Json::array(excluded_callbacks.map(Json::string)),
    "excluded_typedefs": Json::array(excluded_typedefs.map(Json::string)),
    "excluded_dictionary_prefixes": Json::array(
      excluded_dictionary_prefixes.map(Json::string),
    ),
    "dictionary_member_injection": {},
  }
  cfg.stringify()
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
    empty_config_json(excluded_interfaces=["Element"]),
  )
  let filtered = filter_idl(config, defs)
  json_inspect(filtered, content=[
    {
      "extended_attributes": [],
      "definition": ["Interface", { "name": "Node", "members": [] }],
      "spec": "",
    },
    {
      "extended_attributes": [],
      "definition": ["Dictionary", { "name": "EventInit", "members": [] }],
      "spec": "",
    },
    {
      "extended_attributes": [],
      "definition": [
        "Enum",
        { "name": "ScrollBehavior", "values": ["auto", "smooth"], "spec": "" },
      ],
      "spec": "",
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
    empty_config_json(excluded_interfaces=["Element", "Node"]),
  )
  let filtered = filter_idl(config, defs)
  json_inspect(filtered, content=[
    {
      "extended_attributes": [],
      "definition": ["Interface", { "name": "Document", "members": [] }],
      "spec": "",
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
    empty_config_json(excluded_callbacks=["MutationCallback"]),
  )
  let filtered = filter_idl(config, defs)
  json_inspect(filtered, content=[
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
          "spec": "",
        },
      ],
      "spec": "",
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
    empty_config_json(excluded_callbacks=["MutationCallback"], excluded_typedefs=[
      "EventHandler",
    ]),
  )
  let filtered = filter_idl(config, defs)
  json_inspect(filtered, content=[
    {
      "extended_attributes": [],
      "definition": [
        "Typedef",
        { "type_": "UnsignedLongLong", "name": "DOMTimeStamp", "spec": "" },
      ],
      "spec": "",
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
    empty_config_json(
      excluded_callbacks=["MutationCallback"],
      excluded_typedefs=["EventHandler"],
      excluded_dictionary_prefixes=["Element"],
    ),
  )
  let filtered = filter_idl(config, defs)
  json_inspect(filtered, content=[
    {
      "extended_attributes": [],
      "definition": ["Dictionary", { "name": "EventInit", "members": [] }],
      "spec": "",
    },
  ])
}

///|
test "filter_idl plus flatten skips dictionaries whose filtered parent is missing" {
  let widl : String =
    #|dictionary ElementBase {};
    #|dictionary ChildDict : ElementBase {
    #|  DOMString childProp;
    #|};
    #|dictionary EventInit {};
  let defs = @parser.parse(widl)
  let config : @config.Config = @config.load_config_from_string(
    empty_config_json(excluded_dictionary_prefixes=["Element"]),
  )
  let filtered = filter_idl(config, defs)
  let partial_merged = @partial_merged.merge_partials(filtered)
  let logs : Array[String] = []
  let flattened = @flattened_idl.flatten(partial_merged, fn(msg) {
    logs.push(msg)
  })
  inspect(flattened.dictionaries.contains("ChildDict"), content="false")
  inspect(flattened.dictionaries.contains("EventInit"), content="true")
  inspect(
    logs.join("\n").contains("Skipped dictionary 'ChildDict'"),
    content="true",
  )
  inspect(logs.join("\n").contains("ElementBase"), content="true")
}

///|
test "format_generation_summary renders compact end-of-run report" {
  inspect(
    format_generation_summary(GenerationSummary::{
      config_file: "config.json",
      idl_dir: "./idl",
      templates_dir: "./base.mbt",
      output_dir: "./webapi",
      idl_file_count: 3,
      definition_count: 42,
      template_file_count: 5,
      enum_count: 2,
      typedef_count: 1,
      dictionary_count: 4,
      interface_count: 6,
      callback_count: 1,
      namespace_count: 2,
      runtime_file_count: 1,
      metadata_file_count: 1,
      skipped_count: 2,
      skipped_log_written: true,
      stale_file_count: 3,
      warnings: ["failed to write optional note"],
    }),
    content=(
      #|=== MoonBit WebAPI Bindings Generator Summary ===
      #|Config: config.json
      #|Inputs: 3 IDL files from ./idl
      #|Filtered definitions: 42
      #|Templates: 5 files from ./base.mbt
      #|Generated types: 2 enums, 1 typedefs, 4 dictionaries, 6 interfaces, 1 callbacks, 2 namespaces
      #|Output: 24 files written to ./webapi (16 generated, 5 templates, 3 support)
      #|Cleanup: removed 3 stale generated files
      #|Skipped items: 2 (details written to ./webapi/skipped.log)
      #|Warnings:
      #|  - failed to write optional note
    ),
  )
}

///|
test "reconcile_output_dir removes stale generated files and keeps unrelated files" {
  let output_dir = "./cmd/main/.wbtest_reconcile_output_dir"
  try clear_test_dir(output_dir) catch {
    e => fail("failed to clear stale test directory before setup: \{e}")
  } noraise {
    _ => ()
  }
  @fs.create_dir(output_dir) catch {
    e => fail("failed to create test output directory: \{e}")
  }

  let files = [
    "keep_template.mbt", "keep_unified.mbt", "stale_shared.mbt", "webapi.mjs", "moon.pkg",
    "moon.pkg.json", "skipped.log", "README.md",
  ]
  for filename in files {
    @fs.write_string_to_file("\{output_dir}/\{filename}", filename) catch {
      e => fail("failed to seed test file \{filename}: \{e}")
    }
  }

  let expected_files : @hashset.HashSet[String] = @hashset.from_array([
    "keep_template.mbt", "keep_unified.mbt", "webapi.mjs", "moon.pkg",
  ])

  try {
    inspect(reconcile_output_dir(output_dir, expected_files), content="3")
    inspect(@fs.path_exists("\{output_dir}/keep_template.mbt"), content="true")
    inspect(@fs.path_exists("\{output_dir}/keep_unified.mbt"), content="true")
    inspect(@fs.path_exists("\{output_dir}/webapi.mjs"), content="true")
    inspect(@fs.path_exists("\{output_dir}/moon.pkg"), content="true")
    inspect(@fs.path_exists("\{output_dir}/stale_shared.mbt"), content="false")
    inspect(@fs.path_exists("\{output_dir}/moon.pkg.json"), content="false")
    inspect(@fs.path_exists("\{output_dir}/skipped.log"), content="false")
    inspect(@fs.path_exists("\{output_dir}/README.md"), content="true")
  } catch {
    e => {
      try clear_test_dir(output_dir) catch {
        cleanup_error =>
          fail(
            "reconcile_output_dir test cleanup failed after error: \{cleanup_error}",
          )
      } noraise {
        _ => ()
      }
      fail("reconcile_output_dir raised unexpectedly: \{e}")
    }
  } noraise {
    _ =>
      try clear_test_dir(output_dir) catch {
        e => fail("failed to clean up test output directory: \{e}")
      } noraise {
        _ => ()
      }
  }
}
