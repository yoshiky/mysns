class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :message_board_id
      t.integer :user_id
      t.string :title
      t.text :body

      t.timestamps
      t.timestamp :deleted_at
      t.integer :lock_version, :default => 0
    end
  end
end
