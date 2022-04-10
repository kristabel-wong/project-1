class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new user_params
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path
        else
            render :new
        end
    end

    def edit
        @user = User.find params[:id]
    end

    def update
        @user = User.find params[:id]
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path
        else
            render :new
        end
    end

    def show
        @user = User.find params[:id]
    end

    private
    def user_params
        params.require(:user).permit(:email, :first_name, :last_name, :image, :password, :password_confirmation)
    end
end
