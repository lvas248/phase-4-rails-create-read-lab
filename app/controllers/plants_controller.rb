class PlantsController < ApplicationController
    
    wrap_parameters format: []

    def index
        render json: Plant.all, status: :accepted
    end

    def show
        plant = Plant.find(params[:id])
        render json: plant, status: :accepted
    end

    def create
        plant = Plant.create(plant_parameters)
        render json: plant, status: :created
    end

    private

    def plant_parameters
        params.permit(:name, :image, :price)
    end

end