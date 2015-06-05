class MoviequotesController < ApplicationController

  # GET /moviequotes
  def index
    @moviequotes = Moviequote.all
    render json: @moviequotes
  end

  # GET /moviequotes/:id
  def show
    # find one Moviequote by id
    @moviequote = Moviequote.find(params[:id])
    render json: @moviequote
  end

  # POST /moviequotes
  def create
    @moviequote = Moviequote.new(moviequote_params)
    if @moviequote.save
      render json: @moviequote, status: :created, location: moviequotes_url
    else
      render json: @moviequote.errors, status: :unprocessable_entity
     end
  end

  # PATCH /moviequotes/:id
  def update
    @moviequote = Moviequote.find(params[:id])
    if @moviequote.update(moviequote_params)
      head :no_content
    else
      render json: @moviequote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /moviequotes/:id
  def destroy
    @moviequote = Moviequote.find(params[:id])
    @moviequote.destroy

    head :no_content
  end



  private

  def moviequote_params
    params.require(:moviequote).permit(:quote, :title)
  end


end
