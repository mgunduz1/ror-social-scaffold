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

  context 'active record associations' do
    it 'belongs to users' do
      expect(Friendship.reflect_on_association(:user).macro).to be :belongs_to
    end
  
    it 'belongs to test' do
      expect(Friendship.reflect_on_association(:friend).macro).to be :belongs_to
    end
  end
end