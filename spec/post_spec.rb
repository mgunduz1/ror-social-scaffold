require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'validations' do
    it 'should validate' do
    should validate_presence_of(:content)
    end
  end

  context 'active record associations' do
    it { should have_many(:comments) }
    it { should belong_to(:user) }
    it { should have_many(:likes) }
    
  end
end