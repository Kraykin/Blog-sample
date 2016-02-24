require 'spec_helper'

feature "Account Creation" do
  scenario "allows guest to create account" do
    sign_up
    
    expect(page).to have_content I18n.t 'devise.registrations.signed_up'
  end
end

def sign_up
  visit new_user_registration_path
  
  fill_in :user_email, :with => 'user@example.com'
  fill_in :user_username, :with => 'Test_new_user'
  fill_in :user_password, :with => 'Secure123!@#'
  fill_in :user_password_confirmation, :with => 'Secure123!@#' # use name from id="user_password_confirmation"
  click_button 'Sign up'
end