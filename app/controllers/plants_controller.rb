class PlantsController < ApplicationController
    def index
      plants = Plant.all 
      render json: plants
      end
    
      # GET /plants/:id
      def show
       plants = Plant.find_by(id: params[:id])
       render json: plants
      end
    
      # POST /plants
      def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
      end
    
      private
    
      def plant_params
        params.permit(:name, :image, :price)
      end
end
