class CreateTimelines < ActiveRecord::Migration[5.0]
  def change
    create_table :timelines do |t|
      t.string :weareat
      t.string :milestone
      t.text :description
      t.string :timelink
      t.integer :project_id

      t.timestamps
    end
  end
end
