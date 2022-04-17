class CommentsController < ApplicationController
    def new
        @comment = Comment.new
        @trip = Trip.find params[:id]
    end

    def create
        @comment = Comment.create comment_params
        @comment.save
        flash[:message] = " 💬  Your comment has been created "
        redirect_to trip_path(params[:comment][:trip_id])
    end

    def edit
        @comment = Comment.find params[:format]
        @trip = Trip.find params[:id]
    end

    def update
        @comment = Comment.find params[:id]
        @comment.update comment_params
        flash[:update] = " 💬  Your comment has been edited "
        redirect_to trip_path(params[:comment][:trip_id])
    end

    def destroy
        @comment = Comment.find params[:format]
        @comment.destroy
        flash[:update] = " 💬  Your comment has been deleted "
        redirect_to trip_path(params[:id])
    end

    private
    def comment_params
        params.require(:comment).permit(:trip_id, :content, :user_id)
    end
end
