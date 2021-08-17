class AddRelationshipToPost < ActiveRecord::Migration
  def change
    add_column :posts, :company, :integer
  end
end
