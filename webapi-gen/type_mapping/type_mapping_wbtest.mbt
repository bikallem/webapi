///|
test "snake_case function" {
  inspect(
    snake_case("CanvasRenderingContext2D"),
    content="canvas_rendering_context2d",
  )
  inspect(snake_case("XMLHttpRequest"), content="xml_http_request")
  inspect(snake_case("DOMImplementation"), content="dom_implementation")
  inspect(snake_case("MyAPIInterface"), content="my_api_interface")
  inspect(snake_case("already_snake_case"), content="already_snake_case")
  inspect(snake_case("name"), content="name")
  inspect(snake_case("margin-top"), content="margin-top")
}
