class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    # @user = User.new
  end
  def create
    @user = User.create(user_params)
    # if @user.save
    redirect_to '/users'
    # else
    # flash[:errors] = @user.errors.full_messages
    # end
  end

  def edit
  @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    redirect_to "/users"
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email,)
  end
end
