class CreateGenrekeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :genrekeywords do |t|
      t.integer :genre_id
      t.integer :yoyaku_id
      t.string :keyword

      t.timestamps
    end
  end
end
