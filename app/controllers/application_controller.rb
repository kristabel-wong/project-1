class ApplicationController < ActionController::Base
    before_action :fetch_user
    before_action :set_query

    def set_query
        @query = Trip.ransack(params[:q])
    end

    private
    def fetch_user
        @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
        session[:user_id] = nil unless @current_user.present?
    end

    def check_for_login #security - prevents access to site functionality when not logged in - used in controllers
        redirect_to new_user_path unless @current_user.present?
    end
    
end
