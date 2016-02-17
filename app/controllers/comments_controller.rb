class CommentsController < ApplicationController
  
  def create
    @article = Article.find(params[:article_id])
    @article.comments.create(comment_params)

    redirect_to article_path(@article)
  end

  private

  def comment_params # allowing attributes from params[]
    params.require(:comment).permit(:author, :body)
  end

end
