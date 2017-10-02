class CreateDreams < ActiveRecord::Migration[5.0]
  def change
    create_table :dreams do |t|
      t.string :dreamtype
      t.string :dreambudget
      t.string :dreamaddinfo
      t.string :dreamername
      t.string :dreameremail
      t.string :dreamerphone

      t.timestamps
    end
  end
end
