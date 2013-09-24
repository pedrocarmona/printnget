class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.boolean :color
      t.boolean :both_sides
      t.int :nr_copies
      t.string :page_range
      t.text :observation
      t.boolean :portrait
      t.int :pages_per_sheet
      t.int :cover

      t.timestamps
    end
  end
end
