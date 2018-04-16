class AddQualifiedToEmailcourses < ActiveRecord::Migration[5.0]
  def change
    add_column :emailcourses, :qualified, :boolean, default: false
  end
end
