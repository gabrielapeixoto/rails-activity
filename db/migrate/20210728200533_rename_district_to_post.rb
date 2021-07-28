class RenameDistrictToPost < ActiveRecord::Migration
  def change
    rename_column :posts, :district, :city
  end
end
