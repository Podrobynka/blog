# frozen_string_literal: true

# Articles Controller
class ArticlesController < ApplicationController
  def new; end

  def create
    render plain: params[:article]
  end
end
