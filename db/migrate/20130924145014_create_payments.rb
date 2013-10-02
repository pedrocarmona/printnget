class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.datetime :date
      t.integer :status
      t.boolean :type

      t.timestamps
    end
  end
end
