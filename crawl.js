// Generated by CoffeeScript 1.6.3
var Browser, assert, browser;

Browser = require("zombie");

assert = require("assert");

browser = new Browser();

browser.visit("http://twitter.com/login/", function() {
  browser.wait();
  return browser.fill("input.js-username-field", "rwanghacker").fill("input.js-password-field", "CHRONium84").pressButton("button.submit", function() {
    console.log("new page title: ", browser.text("title"));
    return console.log(browser.text("b.fullname"));
  });
});
