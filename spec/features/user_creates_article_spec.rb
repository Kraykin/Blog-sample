require 'spec_helper'

feature "Article Creation" do
  before(:all) do
    sign_up
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content I18n.t('new_article.subject')
  end

  scenario "allows user to create new article" do
    visit new_article_path
    fill_in :article_title, :with => 'Test article title'
    fill_in :article_text, :with => 'Test article text'
    click_button 'Create article'

    expect(page).to have_content 'Test article title'
  end
end