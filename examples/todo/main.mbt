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
  type Storage,
}

///|
let storage_key : String = "webapi.todo.example.items.v1"

///|
let entry_sep : String = "\u{1e}"

///|
let field_sep : String = "\u{1f}"

///|
let todos : Array[(Int, Bool, String)] = []

///|
let next_id : Array[Int] = [0]

///|
fn save_todos(storage : Storage) -> Unit {
  let encoded = todos.map(fn(todo) {
    let (_, done, text) = todo
    let done_text = if done { "1" } else { "0" }
    done_text + field_sep + text
  })
  storage.set_item(storage_key, encoded.join(entry_sep))
}

///|
fn update_status(status : HTMLDivElement, empty_state : HTMLDivElement) -> Unit {
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

///|
fn apply_done_style(is_done : Bool, item : HTMLLIElement) -> Unit {
  if is_done {
    item.class_list().add(["done"])
  } else {
    item.class_list().remove(["done"])
  }
}

///|
fn append_todo_to_dom(
  todo_id : Int,
  done : Bool,
  text : String,
  list : HTMLUListElement,
  status : HTMLDivElement,
  empty_state : HTMLDivElement,
  storage : Storage,
) -> Unit {
  let item : HTMLLIElement = document.create_element("li").into()

  let left : HTMLDivElement = document.create_element("div").into()
  left.class_list().add(["left"])

  let checkbox : HTMLInputElement = document.create_element("input").into()
  checkbox.set_type_("checkbox")

  let label = document.create_element("span")
  label.set_text_content(text)

  checkbox.set_checked(done)
  apply_done_style(done, item)

  let delete_btn : HTMLButtonElement = document.create_element("button").into()
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
        save_todos(storage)
        update_status(status, empty_state)
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
        save_todos(storage)
        update_status(status, empty_state)
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

///|
fn load_todos(
  list : HTMLUListElement,
  status : HTMLDivElement,
  empty_state : HTMLDivElement,
  storage : Storage,
) -> Unit {
  todos.clear()
  list.set_text_content("")
  next_id[0] = 0

  guard storage.get_item(storage_key) is Some(raw) else { return }

  if raw != "" {
    for encoded in raw.split(entry_sep) {
      guard !encoded.is_empty() && encoded.find(field_sep) is Some(split_idx) else {
        continue
      }
      let done_flag = encoded.view(end_offset=split_idx).to_string()
      let text = encoded.view(start_offset=split_idx + 1).to_string()
      if text != "" {
        let done = done_flag == "1"
        let todo_id = next_id[0]
        next_id[0] = next_id[0] + 1
        todos.push((todo_id, done, text))
        append_todo_to_dom(
          todo_id, done, text, list, status, empty_state, storage,
        )
      }
    }
  }
  update_status(status, empty_state)
}

///|
fn wc_todo(host : @webapi.HTMLElement) -> Unit {
  let doc = document
  let storage = @webapi.window.local_storage()

  // Attach shadow DOM and clone template
  let shadow = host.attach_shadow(
    @webapi.ShadowRootInit::new(@webapi.ShadowRootMode::Open),
  )
  let template : HTMLTemplateElement = doc
    .get_element_by_id("wc-todo-template")
    .unwrap()
    .into()
  shadow.append_child(template.content().clone_node(subtree=true)) |> ignore

  // Query shadow DOM for elements
  let todo_input : HTMLInputElement = shadow
    .query_selector("[data-ref=input]")
    .unwrap()
    .into()
  let add_btn : HTMLButtonElement = shadow
    .query_selector("[data-ref=add]")
    .unwrap()
    .into()
  let clear_btn : HTMLButtonElement = shadow
    .query_selector("[data-ref=clear]")
    .unwrap()
    .into()
  let status : HTMLDivElement = shadow
    .query_selector("[data-ref=status]")
    .unwrap()
    .into()
  let empty_state : HTMLDivElement = shadow
    .query_selector("[data-ref=empty]")
    .unwrap()
    .into()
  let list : HTMLUListElement = shadow
    .query_selector("[data-ref=list]")
    .unwrap()
    .into()

  add_btn.add_event_listener("click", fn(_event) {
    let text = todo_input.value().trim().to_string()
    if text != "" {
      let todo_id = next_id[0]
      next_id[0] = next_id[0] + 1
      todos.push((todo_id, false, text))
      append_todo_to_dom(
        todo_id, false, text, list, status, empty_state, storage,
      )
      todo_input.set_value("")
      save_todos(storage)
      update_status(status, empty_state)
    }
  })

  clear_btn.add_event_listener("click", fn(_event) {
    todos.clear()
    list.set_text_content("")
    save_todos(storage)
    update_status(status, empty_state)
  })

  load_todos(list, status, empty_state, storage)
}

///|
fn main {
  @webapi.define_custom_element("wc-todo", wc_todo)
}
