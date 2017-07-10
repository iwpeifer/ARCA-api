class Api::V1::LettersController < ApplicationController

  def index
    letters = Letter.all
    render json: letters
  end

  def show
    letter = Letter.find(params[:id])
    render json: letter
  end

  def update
    letter = Letter.find(params[:id])
    letter.update(letter_params)
    render json: letter
  end

  def create
    letter = Letter.create(letter_params)
    render json: letter
  end

  def destroy
    letter = Letter.find(params[:id])
    letter.destroy
    render json: letter
  end

  private

  def letter_params
    params.require(:letter).permit(:x, :y, :room_id, :color, :shape, :image_url, :content, :font_size, :font_family, :link_url, :originator)
  end

end
