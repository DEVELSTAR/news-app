class CommentsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_magazine

	def create
	    @comment = @magazine.comments.create(comment_params)
	    @comment.user = current_user

	    if @comment.save
	      redirect_to magazine_path(@magazine), notice: 'Comment has been created'
	    else
	      redirect_to magazine_path(@magazine), alert: 'Comment has not been created'
	    end
	end

	def destroy
	    @comment = @magazine.comments.find(params[:id])
	    @comment.destroy
	    redirect_to magazine_path(@magazine)
    end

	private

	def set_magazine
		@magazine = Magazine.find(params[:magazine_id])
    end

	def comment_params
		params.require(:comment).permit(:body)
	end
end
