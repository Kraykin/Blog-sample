require 'spec_helper'

feature "Contact Creation" do
  scenario "allows access to contacts page" do
    visit '/contacts'
    expect(page).to have_content I18n.t 'contacts.message'
  end

  scenario "allows a guest to create contact" do
    visit '/contacts'
    
    fill_in 'contact_email', :with => 'user@example.com' # use name from id="contact_email"
    fill_in 'contact_message', :with => 'something' # use name from id="contact_message"
    click_button 'Send message'
    
    expect(page).to have_content 'Thanks!'
  end
end