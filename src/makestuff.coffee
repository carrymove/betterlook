makeTextBetter = (text) ->
  symbols = text.split ""
  bettertext = ""
  for char, index in symbols
    case_phase = Math.random()
    if case_phase > 0.5
      char = char.toLowerCase()
    else
      char = char.toUpperCase()
    bettertext += char

  bracketCount = Math.random() * 100
  bettertext += ")" for [1..bracketCount]

  bettertext

makeHeadingBetter = (text) ->
  if text.split("").pop() is "!"
    text += " !"
    text += "!" for [1..Math.random() * 50]
  else
    text += " :"
    text += "*" for [1..Math.random()*20]
  text



document.body.style.backgroundColor = ""
document.body.style.backgroundColor = "00ff00"
document.body.style.backgroundImage = "url(http://carrymove.com/betterlook/rose.png)"
document.body.style.backgroundRepeat = "repeat"

for e in document.body.getElementsByTagName "*"
  switch e.tagName
    when "DIV" then e.style.backgroundColor = "ff00ff"
    when "H1", "H2", "H3", "H4", "H5", "H6"
      e.innerText = makeHeadingBetter(e.innerText)
      e.style.fontFamily = "Monotype Corsiva"
    when "P"
      e.innerText = makeTextBetter e.innerText
      e.style.color = "ff0000"
    else e.style.backgroundColor = "ff00ff"

  e.style.fontFamily = "Comic Sans MS"