# frozen_string_literal: true

# Article model
class Article < ApplicationRecord
  has_many :comments
  belongs_to :user, dependent: :destroy

  validates :title, presence: true
  validates :text, presence: true
end
