class AddUserEmailToChittles < ActiveRecord::Migration
  def change
    add_column :chittles, :user_email, :string
  end
end
