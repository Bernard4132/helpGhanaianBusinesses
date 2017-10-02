class AddUrgentToDreams < ActiveRecord::Migration[5.0]
  def change
    add_column :dreams, :urgent, :boolean, default: false
  end
end
