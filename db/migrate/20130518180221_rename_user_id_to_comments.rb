class RenameUserIdToComments < ActiveRecord::Migration
  def up
    rename_column :comments, :user_id, :from_user_id
  end

  def down
    rename_column :comments, :from_user_id, :user_id
  end
end
