class GuessesController < ApplicationController

  # GET /guesses
  def index
    @guesses = Guess.all
    render json: @guesses
  end

  # GET /guesses/:id
  def show
    # find one Guess by id
    @guess = Guess.find(params[:id])
    render json: @guess
  end

  # POST /guesses
  def create
    @guess = Guess.new(guess_params)
    if @guess.save
      render json: @guess, status: :created
    else
      render json: @guess.errors, status: :unprocessable_entity
     end
  end

  private

  def guess_params
    params.require(:guesses).permit(:titleguess, :user_id)
  end
end
