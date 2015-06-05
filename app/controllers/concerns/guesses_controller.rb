class GuessesController < ApplicationController
  before_action :set_moviequote
  # GET /moviequotes/:moviequote_id/guesses
  def index
    @guesses = @moviequote.guesses
    render json: @guesses
  end


  # GET /moviequotes/:moviequote_id/guesses/:id
  def show
    @guess = @moviequote.guesses.find(params[:id])
    render json: @guess
  end

  # DELETE /moviequotes/:moviequote_id/guesses/:id
  def destroy
    @guess = @moviequote.guesses.find(params[:id])
    @guess.destroy
    head :no_content
  end

  # POST /moviequotes/:moviequote_id/guesses
  def create
    @guess = @moviequote.guesses.build(guess_params)

    if @guess.save
      render json: @guess, status: :created
    else
      render json: @guess.errors, status: :unprocessable_entity
    end

  end

  def guess_params
    params.require(:guess).permit([:titleguess])
  end

  private

  def set_moviequote
    @moviequote = Moviequote.find(params[:moviequote_id])
  end
end
