class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        render json: Restaurant.all
    end

    def show
        rest = find_resturant
        render json: rest
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
