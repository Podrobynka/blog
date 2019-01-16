# frozen_string_literal: true

# Contacts Controller
class ContactsController < ApplicationController
  def new; end

  def create
    render plain: params[:contact]
  end
end
