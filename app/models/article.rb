# frozen_string_literal: true

# Article model
class Article < ApplicationRecord
  has_many :comments
  belongs_to :user, dependent: :destroy, optional: true

  validates :title, presence: true
  validates :text, presence: true

  def subject
    title
  end
end
