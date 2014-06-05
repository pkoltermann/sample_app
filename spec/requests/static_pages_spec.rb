require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text =>'home')
    end
  end
  describe "Help page" do
    it "should have title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text =>'help')
    end
  end
  describe "About page" do
    it "should have title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text =>'contact')
    end
  end
end
