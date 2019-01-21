# frozen_string_literal: true

# Article model
class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
end
