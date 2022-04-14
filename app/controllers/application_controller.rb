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
    
end
