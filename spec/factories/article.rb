# frozen_string_literal: true

FactoryBot.define do
  factory :article, class: 'Article' do
    association :user
    title { 'Title' }
    text { 'TEXT Blaah' }

    factory :article_with_comments do
      after :create do |article, _evaluator|
        create_list :comment, 3, article: article, user: article.user
      end
    end
  end
end
