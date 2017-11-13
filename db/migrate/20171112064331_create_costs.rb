class CreateCosts < ActiveRecord::Migration[5.0]
  def change
    create_table :costs do |t|
      t.integer :amount
      t.boolean :paid
      t.integer :project_id

      t.timestamps
    end
  end
end
