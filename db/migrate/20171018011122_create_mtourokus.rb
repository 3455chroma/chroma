class CreateMtourokus < ActiveRecord::Migration[5.1]
  def change
    create_table :mtourokus do |t|
      t.text :memo
      t.integer :genre_id

      t.timestamps
    end
  end
end
