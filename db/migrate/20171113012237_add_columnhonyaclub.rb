class AddColumnhonyaclub < ActiveRecord::Migration[5.1]
  def change
    add_column :genres, :keyword_honyaclub, :string 
  end
end
