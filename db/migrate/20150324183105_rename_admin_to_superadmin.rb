class RenameAdminToSuperadmin < ActiveRecord::Migration
  def change
  	rename_column :users, :isadmin, :superadmin
  end
end
