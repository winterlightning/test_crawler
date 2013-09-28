Browser = require("zombie")
assert = require("assert")

# Load the page from localhost
browser = new Browser()
browser.visit "http://twitter.com/login/", ->
  browser.wait()
  browser.
    fill("input.js-username-field", "rwanghacker").
    fill("input.js-password-field", "CHRONium84").
    pressButton "button.submit", ->
      
      # Form submitted, new page loaded.
      console.log("new page title: ", browser.text("title"))
      console.log(browser.text("b.fullname"))
