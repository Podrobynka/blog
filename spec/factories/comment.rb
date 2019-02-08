FactoryBot.define do
  factory :comment, class: 'Comment' do
    association :user
    association :article
    body { 'Body' }
    author { 'ASSHOLE' }
  end
end
