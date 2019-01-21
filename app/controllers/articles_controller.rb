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

  def edit
    @article = Article.find_by(id: params[:id])
  end

  def update
    @article = Article.find_by(id: params[:id])
    if @article.valid?
      @article.update(article_params)
    else
      render action: 'edit'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :updated_at)
  end
end
