require 'spec_helper'

feature "Article Editing" do
  before(:each) do
    sign_up
    new_article
    click_link 'Edit'
  end

  scenario "allows user to visit edit article page" do
    expect(page).to have_content I18n.t('edit_article.subject')
  end

end