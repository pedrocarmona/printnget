class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.integer :type
      t.decimal :size
      t.integer :nr_pages

      t.timestamps
    end
  end
end
