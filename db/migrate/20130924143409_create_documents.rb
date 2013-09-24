class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.int :type
      t.decimal :size
      t.int :nr_pages

      t.timestamps
    end
  end
end
