class AddOptionsToDocument < ActiveRecord::Migration
  def change
    add_reference :documents, :options, index: true
  end
end
