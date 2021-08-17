class CreatePostCompanies < ActiveRecord::Migration
  def change
    create_table :post_companies do |t|
      t.references :post, index: true
      t.references :company, index: true

      t.timestamps null: false
    end
    add_foreign_key :post_companies, :posts
    add_foreign_key :post_companies, :companies
  end
end
