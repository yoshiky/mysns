class User < ActiveRecord::Base
  acts_as_paranoid
  
  has_many :message_board

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :name, :birthday, :address, :self_introduction, :password, :password_confirmation, :remember_me

  scope :find_user_except, lambda { |q|
    where 'id <> :q', :q => "#{q}}"
  }

end
