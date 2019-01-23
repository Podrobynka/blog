# frozen_string_literal: true

# Article model
class Article < ApplicationRecord
  has_many :comments
  validates :title, presence: true
  validates :text, presence: true
end
