require 'spec_helper'

basic_title = 'RoR Tut App'

describe "Static pages" do
  describe "Home page" do
    it "should have title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => basic_title)
    end
  end
  describe "Help page" do
    it "should have title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{basic_title} | help")
    end
  end
  describe "About page" do
    it "should have title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text =>"#{basic_title} | about")
    end
  end
  describe "About page" do
    it "should have title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text =>"#{basic_title} | contact")
    end
  end
end
