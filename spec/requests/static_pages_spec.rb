require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have title 'Home'" do
      visit root_path
      page.should have_selector('h1', :text =>'home')
    end

    it "should have base title 'Home'" do
      visit root_path
      page.should have_selector('title', :text =>'RoR Tut App')
    end

    it "should have custom title 'Home'" do
      visit root_path
      page.should have_selector('title', :text =>'| home')
    end

  end
  describe "Help page" do

    it "should have title 'Help'" do
      visit help_path
      page.should have_selector('h1', :text =>'help')
    end

    it "should have base title 'Help'" do
      visit help_path
      page.should have_selector('title', :text =>'RoR Tut App')
    end

    it "should have custom title 'Help'" do
      visit help_path
      page.should have_selector('title', :text =>'| help')
    end

  end

  describe "Contact page" do
    it "should have title 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text =>'contact')
    end

    it "should have base title 'Contact'" do
      visit contact_path
      page.should have_selector('title', :text =>'RoR Tut App')
    end

    it "should have custom title 'Contact'" do
      visit contact_path
      page.should have_selector('title', :text =>'| contact')
    end
  end
end
