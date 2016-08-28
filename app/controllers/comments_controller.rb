class CommentsController < ApplicationController
before_action :set_message, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, only: [:show, :new, :update, :destroy, :edit]




  def create
  	@board = Board.find(params[:board_id])
      attr = params.require(:comment).permit(:name, :login)
     @comment = Comment.new(attr)
    @comment.user = current_user
    @comment.save
    redirect_to board_path(@board)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
