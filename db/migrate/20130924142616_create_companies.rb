class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :nif
      t.integer :phone
      t.string :url

      t.timestamps
    end
  end
end
