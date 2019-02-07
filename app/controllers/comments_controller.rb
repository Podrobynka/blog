class CommentsController < ApplicationController
  before_action :authenticate_user!, :only => [:create]

  def create
    article = Article.find_by(id: params[:article_id])
    current_user
      .comments
      .create(comment_params.merge(article_id: params[:article_id]))

    redirect_to article
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
