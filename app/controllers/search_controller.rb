class SearchController < ApplicationController
    def index
        @query = Trip.ransack(params[:q])
        @trips = @query.result(:distinct => true)
    end
end
