class ReceivedMessagesController < ApplicationController
  before_filter :authenticate_user!

  def index
    #@received_messages = Comment.find(:all, :order => "id DESC")
    @received_messages = Comment.find_all_by_to_user_id(current_user.id)
  end

end
