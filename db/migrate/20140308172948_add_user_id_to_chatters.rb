class AddUserIdToChatters < ActiveRecord::Migration
  def change
    add_column :chatters, :user_id, :integer
  end
end
