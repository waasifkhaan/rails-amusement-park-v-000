class UsersController < ApplicationController
  def show
    if logged_in?
      @user = User.find(params[:id])
    else
      redirect_to root_path
    end
  end

  def new
    @user = User.new

  end

  def create
    binding.prye
    @user = User.new(user_params)
    @user.admin = params[:admin]
    if @user.save
      binding.pry
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
    render :new
    end
  end

  def signin
    @user = User.new
  end

  def index
  end


private

def user_params
  params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :password, :admin)
end

end
