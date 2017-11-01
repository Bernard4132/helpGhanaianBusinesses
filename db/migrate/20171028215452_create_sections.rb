class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.text :description
      t.string :sectionimage
      t.string :displayname

      t.timestamps
    end
  end
end
