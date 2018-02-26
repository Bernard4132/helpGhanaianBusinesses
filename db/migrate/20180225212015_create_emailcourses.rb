class CreateEmailcourses < ActiveRecord::Migration[5.0]
  def change
    create_table :emailcourses do |t|
      t.string :name
      t.string :businessname
      t.string :email
      t.string :phonenumber
      t.boolean :staff, :default => false
      t.string :resultsiwant

      t.timestamps
    end
  end
end
