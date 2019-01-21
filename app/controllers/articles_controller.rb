# frozen_string_literal: true

# Articles Controller
class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order(updated_at: :desc)
  end

  def new; end

  def create
    @article = Article.new(article_params)
    if @article.valid?
      @article.save
    else
      render action: 'new'
    end
  end
end

private

def article_params
  params.require(:article).permit(:title, :text, :updated_at)
end
