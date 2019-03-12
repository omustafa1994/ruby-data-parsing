require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  # Place your methods here
  def price
    @menu.search('price').split('£').to_a
  end

  def second(n)
    @menu.search('calories')
  end

  def three
    @menu.search('food')
  end

end

