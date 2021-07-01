class CommentsController < ApplicationController
	
	def create
		@post = Post.find(params[:post_id])
		@body = comment_params[:body]
		@comment = @post.comments.create(body: @body, userName: current_user.userName)
		redirect_to post_path(@post)
	end

	private
	def comment_params
		params.require(:comment).permit(:body)
	end
end