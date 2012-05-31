# Global
converter = new Markdown.Converter

whitepaper = (slug, callback) ->
  $.get("/whitepapers/#{slug}/index.md", (markdown_text) ->
    $("#main").html(converter.makeHtml(markdown_text))
    callback())

$ ->
  whitepaper('middle-names')
