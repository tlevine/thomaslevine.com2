# Global
converter = new Markdown.Converter

# Load the header
header = (className) ->
  classNames = ['home', 'whitepaper']
  if className in classNames
    $('header').toggleClass(className, 500)
  else
    log 'className must be among ' + JSON.stringify classNames

# Load a whitepaper
whitepaper = (slug, callback = () ->) ->
  $.get("/whitepapers/#{slug}/index.md", (markdown_text) ->
    $('#main').html(converter.makeHtml(markdown_text))
    callback())
  
# Main
$ ->
  whitepaper('middle-names')
