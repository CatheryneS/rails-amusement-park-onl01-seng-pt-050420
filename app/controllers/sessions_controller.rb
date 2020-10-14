class SessionsController < ApplicationController
    def new
    end

    def create
        byebug
        @user = User.find_by(name: params[:user][:name])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end
end