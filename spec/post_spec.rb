require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'validations' do
    it 'should validate' do
      should validate_presence_of(:content)
    end
  end

  context 'active record belongs to' do
    it 'belongs to users' do
      expect(Post.reflect_on_association(:user).macro).to be :belongs_to
    end
  end

  context 'active record associations' do
    it { should have_many(:comments) }
    it { should have_many(:likes) }
  end
end
