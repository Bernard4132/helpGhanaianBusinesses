class AddFieldsToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :user_id, :integer
    add_column :articles, :article_image_id, :string
    add_column :articles, :bleb, :text
  end
end
