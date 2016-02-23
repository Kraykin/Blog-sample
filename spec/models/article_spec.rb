require 'spec_helper'

describe Article do
  
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
    it { should ensure_length_of(:title).is_at_most(140) }
    it { should ensure_length_of(:text).is_at_most(4000) }
  end
  
  describe "associations" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article title" do
      article = create(:article, title: 'Test article title')
      expect(article.subject).to eq 'Test article title'
    end
  end

  describe "#last_comment" do
    it "returns the last comment" do
      article = create(:article_with_comments)
      expect(article.last_comment.body).to eq 'Comment body 3'
    end
  end

end