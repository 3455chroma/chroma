class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :imagename
      t.string :imagetype
      t.binary :imagedate
      t.string :account

      t.timestamps
    end
  end
end
