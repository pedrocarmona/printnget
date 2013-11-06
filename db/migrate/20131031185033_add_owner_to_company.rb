class AddOwnerToCompany < ActiveRecord::Migration
  def change
    add_reference :companies, :owner, index: true
  end
end
