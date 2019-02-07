# frozen_string_literal: true

# Articles Controller
class ArticlesController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def index
    @articles = Article.all.order(updated_at: :desc)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new; end

  def create
    @article = current_user.articles.new(article_params)

    if @article.save
      redirect_to @article
    else
      render action: 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render action: 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
