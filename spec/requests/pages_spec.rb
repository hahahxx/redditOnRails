require 'spec_helper'

describe "Pages" do

  describe "GET /pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get root_path
      response.status.should be(200)
    end
  end

  subject { page }

  describe "Home page" do
  	before { visit root_path }

  	it "should have the h1 'Sample App'" do
    	page.should have_selector('h2', text: 'I AM A Homepage')
  	end

    it { should have_selector('h2', text: 'I AM A Homepage') }
    it { should have_selector('title', text: 'RedditOnRails') }
    it { should_not have_selector 'title', text: 'Home' }
  end

end
