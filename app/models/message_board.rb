class MessageBoard < ActiveRecord::Base
  #attr_accessible :body, :deleted_at, :lock_version, :title, :user_id
  attr_accessible :body, :title

  belongs_to :user

  scope :order_by_date_desc, order("updated_at desc")

  scope :find_my_message, lambda { |q|
    where 'user_id = :q', :q => "#{q}"
  }

  scope :find_message_except_me, lambda { |q|
    where 'user_id <> :q', :q => "#{q}"
  }

end
