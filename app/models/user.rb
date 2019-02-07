# frozen_string_literal: true

# User (devise)
class User < ApplicationRecord
  has_many :articles, dependent: :destroy # статті видаляться разом з автором
  has_many :comments, dependent: :nullify # коменти залишаться, але без автора
  # Include default devise modules. Others available are:
  # :confirmable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :lockable
end
