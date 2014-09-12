require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
  
    it "should have the content 'Abitel'" do
	  visit root_path
	  expect(page).to have_content('Abitel')
	end

	it "should have the title 'Home'" do
	  visit root_path
	  expect(page).to have_title("Abitel | Home")
	end
  end

  describe "Contact page" do
  
    it "should have the content 'Contact'" do
	  visit contact_path
	  expect(page).to have_content('Contact')
	end

	it "should have the title 'Contact'" do
	  visit contact_path
	  expect(page).to have_title("Abitel | Contact")
	end
  end
end
