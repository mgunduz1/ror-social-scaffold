class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  # rubocop:disable Layout/LineLength
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.ordered_by_most_recent
    @sent = Friendship.where(user_id: current_user.id).where(confirmed: nil)
    @pending = Friendship.where(friend_id: current_user.id).where(confirmed: nil)
    @acceptreject = Friendship.where(friend_id: current_user.id).where(user_id: @user).where(confirmed: nil).first
    @cancel = Friendship.where(friend_id: @user.id).where(user_id: current_user.id).where(confirmed: nil).first
    @deletef = Friendship.where(friend_id: @user.id,
                                user_id: current_user.id).or(Friendship.where(friend_id: current_user.id,
                                                                              user_id: @user.id)).where(confirmed: true).first
  end
  # rubocop:enable Layout/LineLength
end
