class AddColumnsToProject < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.timestamps
    end
    add_column :projects, :title, :string
    add_column :projects, :content, :text
  end
end
