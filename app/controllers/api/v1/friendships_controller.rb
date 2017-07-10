class Api::V1::FriendshipsController < ApplicationController

  def index
    friendships = Friendship.all
    render json: friendships
  end

  def show
    friendship = Friendship.find(params[:id])
    render json: friendship
  end

  def create
    friendship = Friendship.create(friendship_params)
    render json: friendship
  end

  private

  def friendship_params
    params.require(:friendship).permit(:user_id, :friend_id, :status)
  end

end
