class DestroyRelationshipToPost < ActiveRecord::Migration
  def change
    remove_column :posts, :company, :integer
  end
end
