class RestaurantPizzasController < ApplicationController
    def create
      restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
  
      if restaurant_pizza.valid?
        render json: restaurant_pizza.pizza, only: [:id, :name, :ingredients], status: :created
      else
        render json: { errors: restaurant_pizza.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def restaurant_pizza_params
      params.permit(:price, :pizza_id, :restaurant_id)
    end
  end
  
