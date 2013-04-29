class AddColumnSelfIntroductionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :self_introduction, :text, :after => :address
  end
end
