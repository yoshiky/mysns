class MessageBoard < ActiveRecord::Base
  attr_accessible :body, :title, :user_id

  belongs_to :user
  has_many :comments

  scope :order_by_date_desc, order("updated_at desc")

  scope :find_my_message, lambda { |q|
    where 'user_id = :q', :q => "#{q}"
  }

  scope :find_message_except_me, lambda { |q|
    where 'user_id <> :q', :q => "#{q}"
  }

end
