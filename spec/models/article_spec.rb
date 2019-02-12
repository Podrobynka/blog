# frozen_string_literal: true

require 'rails_helper'

describe Article, type: :model do
  let!(:user) { create :user }

  describe 'assotiations' do
    it { should have_many :comments }
    it { should belong_to :user }
  end

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
    it { should validate_length_of :title }
    it { should validate_length_of :text }
  end

  describe '#subject' do
    it 'returns article title' do
      article = create :article, user: user, title: 'Lorem ipsum'
      expect(article.subject).to eq 'Lorem ipsum'
    end
  end

  describe '#last_comment' do
    it 'returns the last comment' do
      article = create(:article_with_comments, user: user)
      expect(article.last_comment.body).to eq 'comment body 3'
    end
  end
end
