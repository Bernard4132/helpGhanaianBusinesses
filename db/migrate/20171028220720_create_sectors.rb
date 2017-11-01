class CreateSectors < ActiveRecord::Migration[5.0]
  def change
    create_table :sectors do |t|
      t.integer :section_id
      t.integer :article_id

      t.timestamps
    end
  end
end
