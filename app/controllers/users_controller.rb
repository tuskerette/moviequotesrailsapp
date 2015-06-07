class UsersController < ApplicationController

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/:id
  def show
    # find one User by id
    @user = User.find(params[:id])
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: users_url
    else
      render json: @user.errors, status: :unprocessable_entity
     end
  end

  # PATCH /users/:id
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/:id
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    head :no_content
  end

  # POST increment points on solved quote
  def increment_points
    @user = User.find(params[:id])
    @user.points = @user.points + 1
    @user.save!
    render json: @user
  end

  def reset_points
    @user = User.find(params[:id])
    @user.points = 0
    @user.save!
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end


end
