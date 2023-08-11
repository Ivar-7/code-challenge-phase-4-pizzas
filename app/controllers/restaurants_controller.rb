class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response

    def index
        render json: Restaurant.all, except: [:created_at, :updated_at]
    end

    def show
        rest = find_resturant
        render json: rest, include: { pizzas: { only: [:id, :name, :ingredients] } }
    end

    def destroy
        rest = find_resturant
        rest.destroy
        head :no_content
    end

    private

    def find_resturant
        Restaurant.find(params[:id])
    end

    def not_found_response
        render json: { error: "Restaurant not found" }, status: :not_found
      end
end
