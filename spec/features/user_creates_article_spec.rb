require 'rails_helper'

feature 'Article Creation' do
  before { sign_up }

  scenario 'allows user to visit new article page' do
    visit new_article_path
    expect(page).to have_content 'New article'
  end
end
