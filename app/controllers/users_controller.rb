class UsersController < ApplicationController
  def index
    @users = User.order(id: :asc)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    user = User.create!(post_params)
    redirect_to user
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :age)
  end
end
