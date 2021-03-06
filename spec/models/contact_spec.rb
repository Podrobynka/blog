require 'rails_helper'
require 'shoulda/matchers'

describe Contact, type: :model do
  it { should validate_presence_of :email }
  it { should validate_presence_of :message }
end
