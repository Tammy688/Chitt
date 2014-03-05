class AddChittleIdToChatter < ActiveRecord::Migration
  def change
    add_column :chatters, :chittle_id, :integer
  end
end
