///|
test "minify_js collapses whitespace and newlines" {
  let input = "export  const   x  =  1\n\nconst   y  =  2\n"
  inspect(
    minify_js(input),
    content=(
      #|export const x=1 const y=2
    ),
  )
}

///|
test "minify_js removes line comments" {
  let input = "const x = 1 // a comment\nconst y = 2\n"
  inspect(
    minify_js(input),
    content=(
      #|const x=1 const y=2
    ),
  )
}

///|
test "minify_js removes block comments" {
  let input = "const x = /* inline */ 1\n"
  inspect(
    minify_js(input),
    content=(
      #|const x=1
    ),
  )
}

///|
test "minify_js preserves string contents" {
  let input = "const s = \"hello  world // not a comment\"\n"
  inspect(
    minify_js(input),
    content=(
      #|const s="hello  world // not a comment"
    ),
  )
}

///|
test "minify_js preserves template literals" {
  let input = "const t = `hello  ${name}  world`\n"
  inspect(
    minify_js(input),
    content=(
      #|const t=`hello  ${name}  world`
    ),
  )
}

///|
test "minify_js separates identifiers" {
  let input = "export  const  foo  =  bar\n"
  inspect(
    minify_js(input),
    content=(
      #|export const foo=bar
    ),
  )
}

///|
test "minify_js no space around operators" {
  let input = "const x = a + b * c\n"
  inspect(
    minify_js(input),
    content=(
      #|const x=a+b*c
    ),
  )
}

///|
test "minify_js strips header comments" {
  let input =
    #|// Copyright 2026
    #|// All rights reserved.
    #|const x = 1
    #|
  inspect(
    minify_js(input),
    content=(
      #|const x=1
    ),
  )
}

///|
test "minify_js end-to-end with filter_js_modules" {
  let source =
    #|// Header comment
    #|const wasmImportObject = {
    #|  mod1: {
    #|    fn1() { return 1 },
    #|    fn2() { return 2 },
    #|  },
    #|  mod2: {
    #|    fn3() { return 3 },
    #|  },
    #|}
    #|
  let required : Map[String, @hashset.HashSet[String]] = {}
  let fields : @hashset.HashSet[String] = @hashset.new()
  fields.add("fn1")
  required["mod1"] = fields
  let trimmed = filter_js_modules(source, required)
  let minified = minify_js(trimmed)
  inspect(
    minified,
    content=(
      #|const wasmImportObject={mod1:{fn1(){return 1},fn2(){return 2},},}
    ),
  )
}

///|
test "minify_js handles empty input" {
  inspect(minify_js(""), content="")
}
