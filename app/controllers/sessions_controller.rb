class SessionsController < ApplicationController
    def create
        @user = User.find_by(username: params[:user][:username])

        if @user && @user.authenticate(params[:user][:password])
            session[:current_user_id] = @user.id
            session[:current_username] = @user.username
            redirect_to decks_path
        else
            redirect_to login_path, notice: "Invalid credentials. Please try again!"
        end
    end

    def destroy
        reset_session
        redirect_to login_path
    end
end
