class BoardsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :new, :update, :destroy, :edit]

  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
     attr = params.require(:board).permit(:name)
     @board = Board.new(attr)
     @board.save
     redirect_to board_path(@board)
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
     @board.update_attributes(params_board)
     redirect_to board_path(@board)
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to boards_path
  end

end
