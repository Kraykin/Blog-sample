require 'spec_helper'

feature "Contact Creation" do
  scenario "allows access to contacts page" do
    visit '/contacts'
    expect(page).to have_content I18n.t 'contacts.message'
  end
end