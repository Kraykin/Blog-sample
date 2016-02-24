def sign_up
  visit new_user_registration_path
  
  fill_in :user_email, :with => 'user@example.com'
  fill_in :user_username, :with => 'Test_new_user'
  fill_in :user_password, :with => 'Secure123!@#'
  fill_in :user_password_confirmation, :with => 'Secure123!@#' # use name from id="user_password_confirmation"
  click_button 'Sign up'
end