require 'rails_helper'
require 'shoulda/matchers'

describe Comment, type: :model do
	it { should belong_to :article }
	it { should belong_to :user }
end
