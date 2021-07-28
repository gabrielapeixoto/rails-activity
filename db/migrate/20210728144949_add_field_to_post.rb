class AddFieldToPost < ActiveRecord::Migration
  def change
    add_column :posts, :age, :integer
    add_column :posts, :cep, :integer
    add_column :posts, :street, :text
    add_column :posts, :number, :integer
    add_column :posts, :district, :text
    add_column :posts, :state, :text
    remove_column :posts, :text, :text
  end
end
