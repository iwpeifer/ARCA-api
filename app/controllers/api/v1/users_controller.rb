class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users, include: [:room, include: [:letters]]
  end

end
