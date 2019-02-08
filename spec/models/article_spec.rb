require 'rails_helper'

describe Article, type: :model do
  describe 'assotiations' do
    it { should have_many :comments }
    it { should belong_to :user }
  end

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe "#subject" do
    it 'returns article title' do
      binding.pry
      user = create :user
      article = create :article, user: user, title: 'Lorem ipsum'
      expect(article.subject).to eq 'Lorem ipsum'
    end
  end
end
