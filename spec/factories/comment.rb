FactoryBot.define do
  factory :comment, class: 'Comment' do
    association :user
    association :article
    # body { 'Body' }
    sequence(:body) { |n| "comment body #{n}" }
    author { 'ASSHOLE' }
  end
end
