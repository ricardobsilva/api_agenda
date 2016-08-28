class CreateMobileOperatorTypes < ActiveRecord::Migration
  def change
    create_table :mobile_operator_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
