doStuffWithDOM = (domContent) -> chrome.tabs.executeScript null, file: "makestuff.js"

chrome.browserAction.onClicked.addListener (tab) ->
  chrome.tabs.executeScript null, file: "makestuff.js"
  console.log "Пизда рулю твоему!"