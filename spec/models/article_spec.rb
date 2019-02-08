require 'rails_helper'
require 'shoulda/matchers'

describe Article, type: :model do
	it { should have_many :comments }
	it { should belong_to :user }

  it { should validate_presence_of :title }
  it { should validate_presence_of :text }
end
