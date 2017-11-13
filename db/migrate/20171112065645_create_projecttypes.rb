class CreateProjecttypes < ActiveRecord::Migration[5.0]
  def change
    create_table :projecttypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
