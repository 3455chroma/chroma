class AddColumntsutaya < ActiveRecord::Migration[5.1]
  def change
    add_column :genres, :keyword_tsutaya, :string 
  end
end