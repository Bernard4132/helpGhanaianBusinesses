class AddSlugToSections < ActiveRecord::Migration[5.0]
  def change
    add_column :sections, :slug, :string
  end
end
