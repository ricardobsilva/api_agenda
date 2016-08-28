class CreateMobileOperators < ActiveRecord::Migration
  def change
    create_table :mobile_operators do |t|
      t.string :name
      t.integer :cod

      t.timestamps null: false
    end
  end
end
