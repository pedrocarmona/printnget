class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.boolean :color
      t.boolean :both_sides
      t.integer :nr_copies
      t.string :page_range
      t.text :observation
      t.boolean :portrait
      t.integer :pages_per_sheet
      t.integer :cover

      t.timestamps
    end
  end
end
