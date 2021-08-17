class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

    def index
        @companies = Company.all
    end

    def show
    end

    def new
        @company = Company.new
    end

    def create
        @company = Company.new(company_params)

        respond_to do |format|
            if @company.save
                format.html { redirect_to @company, notice: 'Empresa cadastrada com sucesso.' }
                format.json { render :show, status: :created, location: @company }
            else
                format.html { render :new }
                format.json { render json: @company.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
            if @company.update(company_params)
                format.html { redirect_to @company, notice: 'Empresa atualizada com sucesso.' }
                format.json { render :show, status: :ok, location: @company }
            else
                format.html { render :edit }
                format.json { render json: @company.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @company.destroy
  
        respond_to do |format|
            if @company.destroy
                format.html { redirect_to @company, notice: 'Empresa excluída com sucesso.' }
                format.json { render :show, status: :destroy, location: @company }
            else
                format.html { render :destroy }
                format.json { render json: @company.errors, status: :unprocessable_entity }
            end
        end
    end

    private

    def company_params
        params.require(:company).permit(:name) 
    end

    def set_company
        @company = Company.find(params[:id])
    end
end
