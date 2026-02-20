///|
/// Todo app example built with generated WebAPI bindings.
using @webapi {
  document,
  type Element,
  type HTMLDivElement,
  type HTMLInputElement,
  type HTMLButtonElement,
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
    empty_state.set_attribute(
      "style", "margin: 0.5em 0 0.25em 0; color: #667085; font-size: 0.95em;",
    )
  } else {
    empty_state.set_attribute(
      "style", "display: none; margin: 0.5em 0 0.25em 0; color: #667085; font-size: 0.95em;",
    )
  }
}

///|
fn apply_done_style(
  is_done : Bool,
  item : HTMLLIElement,
  label : Element,
) -> Unit {
  if is_done {
    item.class_list().add(["done"])
    label.set_attribute(
      "style", "word-break: break-word; color: #667085; text-decoration: line-through;",
    )
  } else {
    item.class_list().remove(["done"])
    label.set_attribute("style", "word-break: break-word;")
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
  item.set_attribute(
    "style", "display: flex; align-items: center; justify-content: space-between; gap: 0.5em; padding: 0.5em 0.25em; border-bottom: 1px solid #e4e7ec;",
  )

  let left : HTMLDivElement = document.create_element("div").into()
  left.set_attribute(
    "style", "display: flex; align-items: center; gap: 0.6em; flex: 1; min-width: 0;",
  )

  let checkbox : HTMLInputElement = document.create_element("input").into()
  checkbox.set_type_("checkbox")

  let label = document.create_element("span")
  label
  ..set_text_content(text)
  .set_attribute("style", "word-break: break-word;")

  checkbox.set_checked(done)
  apply_done_style(done, item, label)

  let delete_btn : HTMLButtonElement = document.create_element("button").into()
  delete_btn
  ..set_type_("button")
  ..set_text_content("Delete")
  .set_attribute("style", "padding: 0.35em 0.6em; font-size: 0.9em;")

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
        apply_done_style(checked, item, label)
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
fn main {
  let app = document.get_element_by_id("app").unwrap()
  let storage = @webapi.window.local_storage()

  let container : HTMLDivElement = document.create_element("div").into()
  container.set_attribute(
    "style", "max-width: 640px; margin: 2em auto; padding: 1em; font-family: system-ui;",
  )

  let heading = document.create_element("h1")
  heading.set_text_content("Todo App")

  let description = document.create_element("p")
  description
  ..set_attribute("style", "margin-top: 0.25em; color: #475467;")
  .set_text_content("Add tasks, mark them done, and remove them.")

  let controls : HTMLDivElement = document.create_element("div").into()
  controls.set_attribute("style", "display: flex; gap: 0.5em; margin: 1em 0;")

  let todo_input : HTMLInputElement = document.create_element("input").into()
  todo_input
  ..set_type_("text")
  ..set_attribute("placeholder", "What needs to be done?")
  .set_attribute("style", "flex: 1; padding: 0.6em 0.75em; font-size: 1em;")

  let add_btn : HTMLButtonElement = document.create_element("button").into()
  add_btn
  ..set_type_("button")
  ..set_text_content("Add")
  .set_attribute("style", "padding: 0.6em 1em; font-size: 1em;")

  let clear_btn : HTMLButtonElement = document.create_element("button").into()
  clear_btn
  ..set_type_("button")
  ..set_text_content("Clear All")
  .set_attribute("style", "padding: 0.6em 1em; font-size: 1em;")

  controls.append_child(todo_input) |> ignore
  controls.append_child(add_btn) |> ignore
  controls.append_child(clear_btn) |> ignore

  let status : HTMLDivElement = document.create_element("div").into()
  status
  ..set_attribute("id", "todo-status")
  .set_attribute(
    "style", "margin: 0.5em 0; color: #475467; font-size: 0.95em; font-weight: 600;",
  )

  let empty_state : HTMLDivElement = document.create_element("div").into()
  empty_state
  ..set_attribute("id", "todo-empty")
  .set_attribute(
    "style", "margin: 0.5em 0 0.25em 0; color: #667085; font-size: 0.95em;",
  )
  empty_state.set_text_content("No tasks yet. Add one above.")

  let list : HTMLUListElement = document.create_element("ul").into()
  list
  ..set_attribute("id", "todo-list")
  .set_attribute(
    "style", "list-style: none; padding: 0; margin: 0.75em 0 0 0; border-top: 1px solid #e4e7ec;",
  )

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

  let children : Array[&@webapi.TNode] = [
    heading, description, controls, status, empty_state, list,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore

  load_todos(list, status, empty_state, storage)
}
