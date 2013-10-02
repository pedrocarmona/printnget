class AddOrderToDocument < ActiveRecord::Migration
  def change
    add_reference :documents, :order, index: true
  end
end
