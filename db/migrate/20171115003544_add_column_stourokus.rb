class AddColumnStourokus < ActiveRecord::Migration[5.1]
  def change
    add_column :stourokus, :dvd, :boolean
  end
end
