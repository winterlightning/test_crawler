Browser = require("zombie")
assert = require("assert")

# Load the page from localhost
browser = new Browser()
browser.visit "http://twitter.com/", ->
  browser.wait()
  console.log("test: ", browser.text("H1"))
