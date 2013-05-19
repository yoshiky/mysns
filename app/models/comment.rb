class Comment < ActiveRecord::Base
  attr_accessible :body, :title, :message_board_id, :from_user_id, :to_user_id

  #belongs_to :user, :foreign_key => 'from_user_id', :foreign_key => 'to_user_id'
  belongs_to :user, :foreign_key => 'from_user_id'
  belongs_to :message_board

end
