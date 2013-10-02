class AddPaymentToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :payment, index: true
  end
end
