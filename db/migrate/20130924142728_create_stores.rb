class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :address
      t.int :phone
      t.int :lat
      t.int :long

      t.timestamps
    end
  end
end
