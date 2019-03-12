# gem nokogiri to install
require "nokogiri"

class GuiseppesMenu

  attr_reader :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  def retrieve_menu_names
    @menu.search('name')
  end

  def retrieve_menu_names_by_xpath
    @menu.xpath('/breakfast_menu/food/name')
  end

end

guiseppesMenu = GuiseppesMenu.new
puts guiseppesMenu.retrieve_menu_names