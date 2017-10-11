class CreateStourokus < ActiveRecord::Migration[5.1]
  def change
    create_table :stourokus do |t|
      t.integer :genre_id
      t.text :name
      t.text :hito
      t.date :hatsubaiday
      t.string :tenpo
      t.integer :money
      t.text :tokuten
      t.integer :user_id

      t.timestamps
    end
  end
end
