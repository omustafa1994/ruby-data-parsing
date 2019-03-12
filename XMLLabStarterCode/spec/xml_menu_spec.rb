require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = GuiseppesMenu.new
  end

  it "no price should be more than £10" do
    @xml_menu.retrieve_price.each do |price|
    expect(@xml_menu.retrieve_price(1)).to be < 10
    pending
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    @xml_menu.retrieve_calories.each do |food_item|
      if food_item.element_children[0].text == "Full Breakfast"
        expect(food_item.element_children[3].text.to_i).to be > 1000
      else
        expect(food_item.element_children[3].text.to_i).to be < 1000
      end
    end
  end

  it "should have all waffle dishes stating you get two waffles" do
    @xml_menu.retrieve_calories.each do |food_item|
      if food_item.element_children[0].text.include? 'Waffles'
        expect(food_item.element_children[2].text.split[0])to eq 'Two'
      end
    end
  end

end
