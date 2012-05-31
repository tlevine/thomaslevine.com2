/* Author:

*/




var converter = new Markdown.Converter();
$.get("/whitepapers/middle-names/index.md", function(markdown_text){
  $("#main").html(converter.makeHtml(markdown_text));
});
