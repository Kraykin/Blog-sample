class ArticlesController < ApplicationController

  def new
  end

  def create
    @atricle = Article.new atricle_params
    if @atricle.valid?
      @atricle.save
    else
      render action: 'new'
    end
  end

  private

  def atricle_params # allowing attributes from params[]
    params.require(:article).permit(:title, :text)
  end

end
