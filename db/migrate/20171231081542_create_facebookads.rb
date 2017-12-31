class CreateFacebookads < ActiveRecord::Migration[5.0]
  def change
    create_table :facebookads do |t|
      t.string :resultsywant
      t.string :budget
      t.string :name
      t.string :email
      t.string :phonenumber

      t.timestamps
    end
  end
end
