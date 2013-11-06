class ChangePhoneInOwners < ActiveRecord::Migration
  def change
    change_column :owners, :phone, :string, :null => false, :default => ""
  end
end
