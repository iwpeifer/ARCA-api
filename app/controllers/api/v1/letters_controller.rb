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

  private

  def letter_params
    params.require(:student).permit(:x, :y)
  end

end
