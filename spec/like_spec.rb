require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'active record associations' do
    it { should belong_to(:post) }
  end

  describe 'active record associations' do
    it { should belong_to(:user) }
  end
end
