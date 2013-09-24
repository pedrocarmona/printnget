class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.int :nif
      t.int :phone
      t.string :url

      t.timestamps
    end
  end
end
