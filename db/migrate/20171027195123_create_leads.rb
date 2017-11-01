class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :organization
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
