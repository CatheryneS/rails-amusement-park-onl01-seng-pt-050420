class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      # if @user.admin == true
      #   redirect_to admin_path(@user)
      # else
        redirect_to user_path(@user), alert: "Account successfully created!"
      # end
    else
      render :new, alert: 'Please enter a password.'
    end
  end

  def show
    if logged_in?
      @user = User.find(params[:id])
    else
      redirect_to root_path, alert: "Please sign in first."
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :password, :admin)
  end
end
