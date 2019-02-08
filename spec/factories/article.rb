FactoryBot.define do
  factory :article, class: 'Article' do
    association :user
    title { 'Title' }
    text { 'TEXT Blaah' }
  end
end
