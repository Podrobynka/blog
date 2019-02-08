require 'rails_helper'
require 'shoulda/matchers'

describe Article, type: :model do
  describe 'assotiations' do
    it { should have_many :comments }
    it { should belong_to :user }
  end

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end
end
