/* Author:

*/




converter = new Markdown.Converter
$.get "/whitepapers/middle-names/index.md" (markdown_text) -> 
  $("#main").html(converter.makeHtml(markdown_text))
