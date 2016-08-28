class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new params[:board]
     @board.save
     redirect_to board_path(@board)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
