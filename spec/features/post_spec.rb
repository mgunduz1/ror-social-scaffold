require 'rails_helper'

RSpec.describe 'Create posts', type: :feature do
  before :each do
    @user = User.create(name: 'TestUser', email: 'xxxxx@xx.com', password: 123_456)
  end

  it 'Should create a new post' do
    visit new_user_session_path
    fill_in 'Email', with: 'xxxxx@xx.com'
    fill_in 'Password', with: 123_456
    click_button 'commit'
    expect(page).to have_content('Recent posts')
    fill_in 'post[content]', with: 'Test post here.'
    click_button 'commit'
    expect(page).to have_content('Test post here.')
  end
end
