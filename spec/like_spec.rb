require 'rails_helper'

RSpec.describe Like, type: :model do
  context 'active record associations' do
    it 'belongs to users' do
      expect(Like.reflect_on_association(:user).macro).to be :belongs_to
    end

    it 'active record associations' do
      expect(Like.reflect_on_association(:post).macro).to be :belongs_to
    end
  end
end
