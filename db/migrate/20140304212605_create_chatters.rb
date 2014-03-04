class CreateChatters < ActiveRecord::Migration
  def change
    create_table :chatters do |t|
      t.string :chit_response

      t.timestamps
    end
  end
end
