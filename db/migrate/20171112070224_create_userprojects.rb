class CreateUserprojects < ActiveRecord::Migration[5.0]
  def change
    create_table :userprojects do |t|
      t.integer :user_id
      t.integer :project_id
      t.string :email

      t.timestamps
    end
  end
end
