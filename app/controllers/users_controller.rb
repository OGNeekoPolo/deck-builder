class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :delete]
    
    def new
       @user = User.new 
    end

    def create
        @user = User.new(user_params)

        if @user.save
            session[:current_user_id] = @user.id
            session[:current_username] = @user.username
            redirect_to decks_path
        else
            render 'new'
        end
    end

    def edit
        
    end

    def update
        if @user.update(user_params)
            redirect_to decks_path  
        else
            render 'edit'
        end
    end

    def delete
        @user.destroy
        redirect_to login_path
    end

    private
        def user_params
            params.require(:user).permit(:username, :email, :password, :password_confirmation)
        end

        def set_user
            @user = User.find(session[:current_user_id])
        end
end
