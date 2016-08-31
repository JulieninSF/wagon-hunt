Rails.application.routes.draw do

root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get "/products/:id" => "products#index"

get "/team" => "pages#team"
get "/contact" => "pages#joinus"


resources :clients #, points d'entrée nécessaires slt only (:new, :create, :index, :show)


=begin
# les 7 points d'entrée du routing CRUD dans Rails
#Read action routes
get "/clients" => "clients#index"
get "/clients/:id" => "clients#show"

#Create action routes
get "/clients/new" => "clients#new" #afficher formulaire pr creer client
post "/clients" => "clients#create" #action va recuperer les params du formulaire et créer en base de données le client

#Update action routes
get "/clients/:id/edit" => "clients#edit" #affiche formulaire pré rempli d'un produit existant
patch "/clients/:id" => "clients#create" #update un produit en base

#Delete action routes
delete "/clients/:id" => "clients#destroy" #par convention, la method du controller sappelle destroy (pour differencier avec delete)
=end
end

