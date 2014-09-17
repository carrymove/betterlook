// Generated by CoffeeScript 1.8.0
(function() {
  var doStuffWithDOM;

  doStuffWithDOM = function(domContent) {
    return chrome.tabs.executeScript(null, {
      file: "makestuff.js"
    });
  };

  chrome.browserAction.onClicked.addListener(function(tab) {
    return doStuffWithDOM(document.body);
  });

}).call(this);

//# sourceMappingURL=background.js.map