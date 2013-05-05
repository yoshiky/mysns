class CommentsController < ApplicationController
  before_filter :authenticate_user!

  #def new
  #end

  def create
    @message_board = MessageBoard.find(params[:message_board_id])
    @comment = @message_board.comments.new(params[:comment])
    @comment.user_id = current_user.id 
 
    if @comment.save
      flash[:notice] = "your message has posted successfully !"
      redirect_to message_board_path(@message_board.id)
      #redirect_to message_boards_list_path
    else
      render :action => :new
    end
  end
end
