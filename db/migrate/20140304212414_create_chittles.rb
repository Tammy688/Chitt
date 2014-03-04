class CreateChittles < ActiveRecord::Migration
  def change
    create_table :chittles do |t|
      t.string :chit_text

      t.timestamps
    end
  end
end
