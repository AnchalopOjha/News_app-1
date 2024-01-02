class CitiesController < ApplicationController


    def new 
@city=City.new
    end

    def index 
        @cities=City.all

   end
    def create
        @city=City.new(city_params)
       if @city.save
        redirect_to cities_path
    else 
        render :new
    end

    end

    def show
        @city =City.find(params[:id])
      end
    
    private
    def city_params
        params.require(:city).permit(:name,:state_id)
      end
end
