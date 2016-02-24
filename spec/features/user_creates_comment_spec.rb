require 'spec_helper'

feature "Comment Creation" do
  scenario "allows user to create new comment" do
    sign_up
    new_article
    
    fill_in :comment_body, :with => 'Test comment text'
    click_button 'Create comment'

    expect(page).to have_content 'Test comment text'
  end
end