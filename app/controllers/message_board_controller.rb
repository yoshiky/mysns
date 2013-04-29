class MessageBoardController < ApplicationController
  def new
    @message_board = MessageBoard.new
  end
end
