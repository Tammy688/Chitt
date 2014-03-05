class AddUserIdToChittle < ActiveRecord::Migration
  def change
    add_column :chittles, :user_id, :integer
  end
end
