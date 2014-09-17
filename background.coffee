doStuffWithDOM = (domContent) -> chrome.tabs.executeScript null, file: "makestuff.js"

chrome.browserAction.onClicked.addListener (tab) ->
  #chrome.tabs.sendMessage tab.id, text: "report_back", doStuffWithDOM
  doStuffWithDOM document.body