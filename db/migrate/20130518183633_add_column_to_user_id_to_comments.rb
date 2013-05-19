class AddColumnToUserIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :to_user_id, :integer, :after => :from_user_id
  end
end
