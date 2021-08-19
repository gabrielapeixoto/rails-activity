class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    def index
        @posts = Post.all
    end

    def show
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)

        respond_to do |format|
            if @post.save
                format.html { redirect_to @post, notice: 'Funcionário cadastrado com sucesso.' }
                format.json { render :show, status: :created, location: @post }
            else
                format.html { render :new }
                format.json { render json: @post.errors, status: :unprocessable_entity }
            end
        end
    end

    def edit
    end

    def update
        respond_to do |format|
            if @post.update(post_params)
                format.html { redirect_to @post, notice: 'Funcionário atualizado com sucesso.' }
                format.json { render :show, status: :ok, location: @post }
            else
                format.html { render :edit }
                format.json { render json: @post.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @post.destroy
  
        respond_to do |format|
            if @post.destroy
                format.html { redirect_to @post, notice: 'Funcionário excluído com sucesso.' }
                format.json { render :show, status: :destroy, location: @post }
            else
                format.html { render :destroy }
                format.json { render json: @post.errors, status: :unprocessable_entity }
            end
        end
    end

    private

    def post_params
        params.require(:post).permit(:name, :age, :cep, :street, :number, :city, :state, :post_id, :company_id)
    end

    def set_post
        @post = Post.find(params[:id])
    end
end
