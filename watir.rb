require 'watir'

browser = Watir::Browser.new(:firefox)
browser.goto 'google.com'
search_bar = browser.text_field(class: 'gsfi')
search_bar.set("Hello World!")

search_bar.send_keys(:enter)

#submit_button = browser.button(type:"submit")
#submit_button.click

browser.driver.manage.timeouts.implicit_wait = 3

var = browser.divs(class:"rc")
var.each{|y| puts y.h3.text}

p "mefaits terminee fermeture de la page"
browser.close