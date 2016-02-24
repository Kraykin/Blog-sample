def new_article
  visit new_article_path
  
  fill_in :article_title, :with => 'Test article title'
  fill_in :article_text, :with => 'Test article text'
  click_button 'Create article'
end