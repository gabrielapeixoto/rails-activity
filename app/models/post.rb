class Post < ActiveRecord::Base
    has_many :post_companies
    has_many :companies, through: :post_companies

    validates :name, presence: true 
    validates :age, presence: true 
    validates :cep, presence: true
    validates :street, presence: true 
    validates :number, presence: true
    validates :city, presence: true 
    validates :state, presence: true
end
