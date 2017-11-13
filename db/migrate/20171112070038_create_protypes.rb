class CreateProtypes < ActiveRecord::Migration[5.0]
  def change
    create_table :protypes do |t|
      t.integer :projecttype_id
      t.integer :project_id

      t.timestamps
    end
  end
end
