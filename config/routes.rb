Rails.application.routes.draw do
root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get "/products/:id" => "products#index"

get "/team" => "pages#team"

get "/contact" => "pages#joinus"

get "/clients/:id" => "clients#show"

get "/clients" => "clients#index"

end
