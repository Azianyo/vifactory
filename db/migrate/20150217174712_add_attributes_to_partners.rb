class AddAttributesToPartners < ActiveRecord::Migration
  def change
  	create_table :partners do |t|
    t.timestamps
  	end
  	add_column :partners, :photo, :string
  end
end
