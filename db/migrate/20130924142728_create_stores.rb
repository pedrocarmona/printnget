class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :address
      t.integer :phone
      t.integer :lat
      t.integer :long

      t.timestamps
    end
  end
end
