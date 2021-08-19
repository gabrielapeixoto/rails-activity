class Post < ActiveRecord::Base
    has_many :post_companies
    has_many :companies, through: :post_companies
    accepts_nested_attributes_for :post_companies, allow_destroy: true

    validates :name, presence: true 
    validates :age, presence: true 
    validates :cep, presence: true
    validates :street, presence: true 
    validates :number, presence: true
    validates :city, presence: true 
    validates :state, presence: true
end
