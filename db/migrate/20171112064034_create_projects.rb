class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.boolean :active
      t.boolean :deploy
      t.integer :cost_id
      t.integer :timeline_id
      t.text :details

      t.timestamps
    end
  end
end
