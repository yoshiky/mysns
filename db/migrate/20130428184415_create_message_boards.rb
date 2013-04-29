class CreateMessageBoards < ActiveRecord::Migration
  def change
    create_table :message_boards do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.timestamps
      t.timestamp :deleted_at
      t.integer :lock_version, :default => 0

    end
  end
end
