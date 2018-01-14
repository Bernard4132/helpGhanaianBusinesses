class CreateWebs < ActiveRecord::Migration[5.0]
  def change
    create_table :webs do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :aboutcompany
      t.text :aboutproject
      t.text :projectdeadline
      t.string :projectbudget
      t.string :targetaudience

      t.timestamps
    end
  end
end
