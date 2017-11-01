class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :articleimage
      t.string :videolink
      t.text :body
      t.string :metadescription
      t.string :metakeywords

      t.timestamps
    end
  end
end
