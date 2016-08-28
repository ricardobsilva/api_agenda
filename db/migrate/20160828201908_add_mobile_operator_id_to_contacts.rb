class AddMobileOperatorIdToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :mobile_operator_id, :integer
    add_index :contacts, :mobile_operator_id
  end
end
