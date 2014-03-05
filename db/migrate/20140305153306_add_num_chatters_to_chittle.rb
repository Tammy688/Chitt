class AddNumChattersToChittle < ActiveRecord::Migration
  def change
    add_column :chittles, :num_chatters, :integer
  end
end
