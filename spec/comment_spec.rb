require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'should belong to user' do
    should belong_to(:user)
  end

  it 'should belong to post' do
    should belong_to(:post)
  end

context 'Association Test' do
  it 'belongs to users' do
    expect(Comment.reflect_on_association(:user).macro).to be :belongs_to
  end

  it 'belongs to post' do
    expect(Comment.reflect_on_association(:post).macro).to be :belongs_to
  end
end
end