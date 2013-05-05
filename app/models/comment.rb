class Comment < ActiveRecord::Base
  attr_accessible :body, :title, :message_board_id, :user_id

  belongs_to :user
  belongs_to :message_board
end
