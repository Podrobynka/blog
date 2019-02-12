# frozen_string_literal: true

require 'rails_helper'
require 'shoulda/matchers'

describe Comment, type: :model do
  it { should belong_to :article }
  it { should belong_to :user }
  it { should validate_length_of :body }
end
