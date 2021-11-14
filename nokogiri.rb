require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(URI.open("https://recipes.sainsburys.co.uk/recipes/italian-pressed-sandwich"))

puts doc.css(".ingredients-list").inner_html
