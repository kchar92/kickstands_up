require 'nokogiri'
require 'httparty'
require 'byebug'

def scraper
  document = Nokogiri::HTML(HTTParty.get('https://www.pure-gas.org/index.jsp?stateprov=CA'))

  byebug
end

scraper