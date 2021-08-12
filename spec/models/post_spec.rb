require 'rails_helper' 

describe Post, type: :model do
    describe 'validations' do
        it "is valid with all fields" do
            post = Post.new(name: 'Gabriela',
            age: '27',
            cep: '28020309',
            street: 'Vinícius de Moraes',
            number: '66',
            city: 'Campos dos Goytacazes',
            state: 'RJ'
        )
        expect(post).to be_valid
        end
        it "is not valid without fields" do
            post = Post.new
            expect(post).not_to be_valid
        end
    end
end
