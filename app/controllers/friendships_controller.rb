class FriendshipsController < ApplicationController
  def create
    @user = User.find(params[:format])
    @friendship = current_user.friendships.create(friend_id: params[:format])
    flash[:notice] = @friendship.save ? 'Friendship request sent' : 'Fail. Try Again.'
    redirect_back(fallback_location: root_path)
  end

  def update
    @friendship = Friendship.find(params[:id])
    @friendship.confirmed = true

    flash[:notice] = @friendship.save ? 'Congrats you got a new friend' : 'Fail. Try Again.'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    flash[:alert] = @friendship.destroy ? 'Deleted successfully' : 'Fail. Try again.'
    redirect_back(fallback_location: root_path)
  end
end
