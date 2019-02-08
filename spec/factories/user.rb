FactoryBot.define do
  factory :user, class: 'User' do
    email { 'w@w.w' }
    username { 'Lomochka' }
    password { 'qwertyui' }
  end
end