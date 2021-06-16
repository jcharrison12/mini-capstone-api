class ProductsController < ApplicationController
  def display_all
    all_products = Product.all
    render json: all_products.as_json
  end
end
