class AddIssuccessToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :issuccess, :boolean
  end
end
