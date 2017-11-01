class CreatePotentials < ActiveRecord::Migration[5.0]
  def change
    create_table :potentials do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :digim
      t.string :searcheo
      t.string :socem
      t.string :orgname
      t.text :goal
      t.string :webs

      t.timestamps
    end
  end
end
