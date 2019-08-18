class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    current_user.comments.create(comment_params)
    redirect_to request.referrer
  end

  private

  def comment_params
    params.require(:comment).permit(:message, :rating, :recipe_name)
  end
end
