require 'spec_helper'

describe "Static pages" do

  subject { page }
  
  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', :text =>'home') }
    it { should have_selector('title', text: full_title('home')) }

  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1', :text =>'help') }
    it { should have_selector('title', text: full_title('help')) }

  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'contact') }
    it { should have_selector('title', text: full_title('contact')) }
  end
end
