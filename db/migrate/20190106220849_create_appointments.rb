class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :companyname
      t.integer :numofemployees
      t.string :usedsocmedmarket
      t.string :wasiteffective
      t.string :doyouhave
      t.string :usedanytopromote
      t.string :email
      t.string :phonenum

      t.timestamps
    end
  end
end
