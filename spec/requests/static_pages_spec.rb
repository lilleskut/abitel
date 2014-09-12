require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Abitel" }

  describe "Home page" do
  
    it "should have the content 'Abitel'" do
	  visit root_path
	  expect(page).to have_content('Abitel')
	end

	it "should have the base title" do
	  visit root_path
	  expect(page).to have_title("#{base_title}")
	end

	it "should not have a custom page title" do
	  visit root_path
	  expect(page).not_to have_title('| Home')
	end 
  end

  describe "Contact page" do
  
    it "should have the content 'Contact'" do
	  visit contact_path
	  expect(page).to have_content('Contact')
	end

	it "should have the title 'Contact'" do
	  visit contact_path
	  expect(page).to have_title("#{base_title} | Contact")
	end
  end
end
