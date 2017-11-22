class AddColumnmany < ActiveRecord::Migration[5.1]
  def change
    add_column :genres, :keyword_routike, :string 
    add_column :genres, :keyword_yahoo, :string 
    add_column :genres, :keyword_seven, :string 
  end
end
