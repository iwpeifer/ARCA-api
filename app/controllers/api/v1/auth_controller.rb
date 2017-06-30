class Api::V1::AuthController < ApplicationController
# before_action :authorize_user!, only: [:show]

  def show
    id = request.headers['Authorization']
    user = User.find_by(id: id)
    if user.present?
      render json: {
        id: user.id,
        username: user.username
      }
    else
      render json: {
        error: 'No user id present on the headers'
      }, status: 404
    end
  end

  def create
    user = User.find_by(username: params[:username])
    if user.present? && user.authenticate(params[:password])
      render json: {
        id: user.id,
        username: user.username,
      }
    else
      render json: {
        error: 'Username or password incorrect'
      }, status: 404
    end
  end
end
