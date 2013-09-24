class AddStoreToCompany < ActiveRecord::Migration
  def change
    add_reference :companies, :store, index: true
  end
end
