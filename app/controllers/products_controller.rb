class ProductsController < ApplicationController
  def display_all
    all_products = Product.all
    render json: all_products.as_json
  end
  def display_canvas
    canvas = Product.first
    render json: canvas.as_json
  end
  def display_paints
    paint = Product.find_by(id: 2)
    render json: paint.as_json
  end
end
