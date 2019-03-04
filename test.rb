
require_relative 'bitly'
require 'selenium-webdriver'
require 'test/unit'

class BitlyTest < Test::Unit::TestCase
    def test_bitly
        @browser = Selenium::WebDriver.for :chrome
        search_page = Bitly.new(@browser)
        search_page.open()
        search_page.search('https://www.youtube.com/watch?v=oK4rRWcm3fM')
        sleep 5
        search_page.close()
    end

    def test_bitly_2
        @browser = Selenium::WebDriver.for :chrome
        search_page = Bitly.new(@browser)
        search_page.open()
        search_page.search('https://www.pexels.com/search/flower/')
        sleep 5
        search_page.close()
    end
end


