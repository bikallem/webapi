///|
/// Todo app web component: <wc-todo> custom element with Shadow DOM.
using @webapi {
  document,
  type HTMLDivElement,
  type HTMLInputElement,
  type HTMLButtonElement,
  type HTMLTemplateElement,
  type HTMLUListElement,
  type HTMLLIElement,
}

///|
let storage_key : String = "webapi.todo.example.items.v1"

///|
let entry_sep : String = "\u{1e}"

///|
let field_sep : String = "\u{1f}"

///|
fn apply_done_style(is_done : Bool, item : HTMLLIElement) -> Unit {
  if is_done {
    item.class_list().add(["done"])
  } else {
    item.class_list().remove(["done"])
  }
}

///|
fn todo_storage_key(host : @webapi.HTMLElement) -> String {
  match host.get_attribute("data-storage-key") {
    Some(key) if key != "" => key
    _ => {
      let id = host.id()
      if id == "" {
        storage_key
      } else {
        storage_key + "." + id
      }
    }
  }
}

///|
fn wc_todo(host : @webapi.HTMLElement) -> Unit {
  let doc = document()
  let storage = @webapi.window().local_storage()
  let component_key = todo_storage_key(host)

  // Attach shadow DOM and clone template
  let shadow = host.attach_shadow(
    @webapi.ShadowRootInit::new(@webapi.ShadowRootMode::Open),
  )
  let template : HTMLTemplateElement = doc
    .get_element_by_id("wc-todo-template")
    .unsafe_into()
  shadow.append_child(template.content().clone_node(subtree=true)) |> ignore

  // Query shadow DOM for elements
  let todo_input : HTMLInputElement = shadow
    .query_selector("[data-ref=input]")
    .unsafe_into()
  let add_btn : HTMLButtonElement = shadow
    .query_selector("[data-ref=add]")
    .unsafe_into()
  let clear_btn : HTMLButtonElement = shadow
    .query_selector("[data-ref=clear]")
    .unsafe_into()
  let status : HTMLDivElement = shadow
    .query_selector("[data-ref=status]")
    .unsafe_into()
  let empty_state : HTMLDivElement = shadow
    .query_selector("[data-ref=empty]")
    .unsafe_into()
  let list : HTMLUListElement = shadow.query_selector("[data-ref=list]").unsafe_into()
  let todos : Array[(Int, Bool, String)] = []
  let next_id : Ref[Int] = { val: 0 }

  fn save_todos() -> Unit {
    let encoded = todos.map(fn(todo) {
      let (_, done, text) = todo
      let done_text = if done { "1" } else { "0" }
      done_text + field_sep + text
    })
    storage.set_item(component_key, encoded.join(entry_sep))
  }

  fn update_status() -> Unit {
    let total = todos.length()
    let done = todos.fold(init=0, fn(acc, todo) {
      let (_, is_done, _) = todo
      if is_done {
        acc + 1
      } else {
        acc
      }
    })
    status.set_text_content(
      "Total: " + total.to_string() + " | Completed: " + done.to_string(),
    )
    if total == 0 {
      empty_state.class_list().remove(["hidden"])
    } else {
      empty_state.class_list().add(["hidden"])
    }
  }

  fn append_todo_to_dom(todo_id : Int, done : Bool, text : String) -> Unit {
    let item : HTMLLIElement = doc.create_element("li").unsafe_into()

    let left : HTMLDivElement = doc.create_element("div").unsafe_into()
    left.class_list().add(["left"])

    let checkbox : HTMLInputElement = doc.create_element("input").unsafe_into()
    checkbox.set_type_("checkbox")

    let label = doc.create_element("span")
    label.set_text_content(text)

    checkbox.set_checked(done)
    apply_done_style(done, item)

    let delete_btn : HTMLButtonElement = doc.create_element("button").unsafe_into()
    delete_btn..set_type_("button").set_text_content("Delete")

    checkbox.add_event_listener("click", fn(_event) {
      let checked = checkbox.checked()
      match
        todos.search_by(fn(todo) {
          let (id, _, _) = todo
          id == todo_id
        }) {
        Some(pos) => {
          let (_, _, current_text) = todos[pos]
          todos[pos] = (todo_id, checked, current_text)
          apply_done_style(checked, item)
          save_todos()
          update_status()
        }
        None => ()
      }
    })

    delete_btn.add_event_listener("click", fn(_event) {
      match
        todos.search_by(fn(todo) {
          let (id, _, _) = todo
          id == todo_id
        }) {
        Some(pos) => {
          todos.remove(pos) |> ignore
          list.remove_child(item) |> ignore
          save_todos()
          update_status()
        }
        None => ()
      }
    })

    left.append_child(checkbox) |> ignore
    left.append_child(label) |> ignore
    item.append_child(left) |> ignore
    item.append_child(delete_btn) |> ignore
    list.append_child(item) |> ignore
  }

  fn load_todos() -> Unit {
    todos.clear()
    list.set_text_content("")
    next_id.val = 0

    guard storage.get_item(component_key) is Some(raw) else {
      update_status()
      return
    }

    if raw != "" {
      for encoded in raw.split(entry_sep) {
        guard !encoded.is_empty() && encoded.find(field_sep) is Some(split_idx) else {
          continue
        }
        let done_flag = encoded.view(end_offset=split_idx).to_string()
        let text = encoded.view(start_offset=split_idx + 1).to_string()
        if text != "" {
          let done = done_flag == "1"
          let todo_id = next_id.val
          next_id.val = next_id.val + 1
          todos.push((todo_id, done, text))
          append_todo_to_dom(todo_id, done, text)
        }
      }
    }
    update_status()
  }

  add_btn.add_event_listener("click", fn(_event) {
    let text = todo_input.value().trim().to_string()
    if text != "" {
      let todo_id = next_id.val
      next_id.val = next_id.val + 1
      todos.push((todo_id, false, text))
      append_todo_to_dom(todo_id, false, text)
      todo_input.set_value("")
      save_todos()
      update_status()
    }
  })

  clear_btn.add_event_listener("click", fn(_event) {
    todos.clear()
    next_id.val = 0
    list.set_text_content("")
    save_todos()
    update_status()
  })

  load_todos()
}

///|
fn main {
  @webapi.define_custom_element("wc-todo", wc_todo)
}
