require 'page-object'

class Bitly 

  include PageObject

  text_field(:shorten_input, :id => 'shorten_url')  
  button(:send, :id => 'shorten_btn')

  def search(query)
    self.shorten_input = query
    send
  end

  def open()
    @browser.get 'https://bitly.com/'
  end

  def close()
    @browser.close()
  end
 end
