class Post < ActiveRecord::Base
    validates :name, presence: true 
    validates :age, presence: true 
    validates :cep, presence: true
    validates :street, presence: true 
    validates :number, presence: true
    validates :city, presence: true 
    validates :state, presence: true
end
