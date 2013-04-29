class MessageBoardsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @message_boards = MessageBoard.find_my_message(current_user.id)
  end

  def new
    @message_board = MessageBoard.new
  end

  def create
    @message_board = MessageBoard.new(params[:message_board])
    @message_board.user_id = current_user.id

    if @message_board.save
      flash[:notice] = "your message has posted successfully !"
      redirect_to :action => :index, :id => @message_board.id
    else
      render :action => :new
    end
  end

  def show
    @message_board = MessageBoard.find(params[:id])
  end

  def list
    @message_boards = MessageBoard.find_message_except_me(current_user.id)
  end
end
