class Api::V1::RoomsController < ApplicationController

  def index
    rooms = Room.all
    render json: rooms, include: :letters
  end

  def show
    room = Room.find(params[:id])
    render json: room
    # , include: :letters
  end

end
