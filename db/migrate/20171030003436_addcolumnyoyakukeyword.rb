class Addcolumnyoyakukeyword < ActiveRecord::Migration[5.1]
  def change
    add_column :genres, :keyword_amazon, :string 
    add_column :genres, :keyword_rakuten, :string 
  end
end
