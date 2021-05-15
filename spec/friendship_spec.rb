require 'rails_helper'

RSpec.describe Friendship, type: :model do
  describe 'validates presence' do
    it 'should validate' do
      should validate_presence_of(:user_id)
    end

    it 'should validate' do
      should validate_presence_of(:friend_id)
    end
  end

  describe 'active record associations' do
    it { should belong_to(:user) }
    it { should belong_to(:friend) }
  end
end
