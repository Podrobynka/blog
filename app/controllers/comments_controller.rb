class CommentsController < ApplicationController
  before_action :authenticate_user!, :only => [:create]

  def create
    @article = Article.find(params[:article_id])
    @article.comments.create(comment_params)
    redirect_to @article

    @article.comments = Comment.all.order(created_at: :desc)
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
