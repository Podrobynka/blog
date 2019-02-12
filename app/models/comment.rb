class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user
  validates :body, length: { maximum: 4000 }
end
