class AddMobileOperatorTypeIdToMobileOperators < ActiveRecord::Migration
  def change
    add_column :mobile_operators, :mobile_operator_type_id, :integer
    add_index :mobile_operators, :mobile_operator_type_id
  end
end
