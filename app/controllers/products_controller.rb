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
  def index
    products = Product.all
    render json: products.as_json
  end
  def show
    product_id = params["id"]
    product = Product.find(product_id)
    render json: product.as_json
  end
  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"]
    )
    product.save
    render json: product.as_json
  end
  def update
    product_id = params["id"]
    product = Product.find(product_id)
    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    product.save
    render json: product.as_json
  end
  def destroy
    product_id = params["id"]
    product = Product.find(product_id)
    product.destroy
    render plain: "Product deleted."
  end
  def params_products
    input = params["product"]
    userproduct = Product.find_by(name: input)
    if userproduct != nil
      render json: userproduct.as_json
    else
      render json: {message: "Uh-oh! That product doesn't exist."}
    end
  end
end
