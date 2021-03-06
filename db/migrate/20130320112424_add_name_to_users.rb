class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, :after => :email
    add_column :users, :birthday, :date, :after => :name
    add_column :users, :address, :string, :after => :birthday
  end
end
