class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :price
      t.integer :status

      t.timestamps
    end
  end
end
