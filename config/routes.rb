Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/all_products", controller: "products", action: "display_all"
  get "/canvas", controller: "products", action: "display_canvas"
  get "/paints", controller: "products", action: "display_paints"
  # get "/products", controller: "products", action: "params_products"
  # get "/products/:product", controller: "products", action: "params_products"
  get "/products", controller: "products", action: "index"
  get "/products/:id", controller: "products", action: "show"
  post "/products", controller: "products", action: "create"
end
