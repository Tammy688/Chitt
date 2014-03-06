class CreateChatters < ActiveRecord::Migration
  def change
    create_table :chatters do |t|
      t.text :chit_response

      t.timestamps
    end
  end
end
