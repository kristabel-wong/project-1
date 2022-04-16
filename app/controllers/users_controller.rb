class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new user_params
        if @user.save
            session[:user_id] = @user.id
            flash[:message] = " ✔️ Thank you for signing up!"
            redirect_to root_path
        else
            render :new
        end
        if params[:file].present?
            req = Cloudinary::Uploader.upload(params[:file])
            @user.image = req["public_id"]
        end
        @user.update_attributes(user_params)
        @user.save
    end

    def edit
        @user = User.find params[:id]
        
    end

    def update
        @user = User.find params[:id]
        if params[:file].present?
            req = Cloudinary::Uploader.upload(params[:file])
            @user.image = req["public_id"]
        end
        @user.update_attributes(user_params)
        @user.update user_params
        @user.save
        flash[:update] = " ✔️ Your profile has been updated! "
        redirect_to user_path
    end

    def show
        @user = User.find params[:id]
    end

    private
    def user_params
        params.require(:user).permit(:email, :first_name, :last_name, :image, :password, :password_confirmation)
    end
end
