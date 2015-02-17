class AddAttributesToUsers < ActiveRecord::Migration
  def change
  	  create_table :users do |t|
      t.timestamps
    end
    add_column :users, :photo, :string
    add_column :users, :description, :text
  end
end
