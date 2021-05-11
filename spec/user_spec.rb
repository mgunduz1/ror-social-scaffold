require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Test for invalid user creation' do
    before do
      @user = User.create(name: 'something', email: 'mailfortest@testformail.com')
    end
    it 'should return false unless all params filled correctly.' do
      expect(@user).to_not be_valid
    end

    it "There is no user because it is not created yet." do
      expect(User.find_by(name: 'something')).to_not eq(@user)
    end
  end

  context 'Test for valid creation' do
    before do
      @user = User.create(name: 'something', email: 'mailfortest@testformail.com', password: '123456')
    end
    it 'should return true when created' do
      expect(@user).to be_valid
    end

    it 'Access a user that is valid.' do
      expect(User.find_by(name: 'something')).to eq(@user)
    end
  end
end