class Company < ActiveRecord::Base
  has_many :post_companies
  has_many :posts, through: :post_companies

  validates :name, presence: true 
end
