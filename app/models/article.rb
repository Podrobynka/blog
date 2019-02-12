# frozen_string_literal: true

# Article model
class Article < ApplicationRecord
  has_many :comments
  belongs_to :user, dependent: :destroy, optional: true

  validates :title, presence: true
  validates :text, presence: true
  validates :title, length: { maximum: 140 }
  validates :text, length: { maximum: 4000 }

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
