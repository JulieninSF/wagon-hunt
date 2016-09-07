class ClientsController < ApplicationController
skip_before_action :authenticate_user!, only: [ :index, :show]
before_action :find_client, only: [:show, :edit, :update, :destroy]
#pour ne pas répéter le code recup id du formulaire
#cela signifie "Avant d'appeler l'action show, edit..., je vais appeler la methode find_product qui chope l'id du formulaire"

def index
  if params[:category]
    @clients = Client.where(category: params[:category])
  else
    @clients = Client.all
  end
end

def show
  #si quelqu'un écrit 11, alors cest 11
  #on va dire que l'id cest l'indice du tableau (car on a pas encore de data base)

#methode params id à mettre en integer pour le lire dans le tableau

end

# methode qui va afficher formulaire
# elle est là pour renvoyer la vue new.html.erb avec le formulaire
  def new
  end

#recup params du formulaire et créer en base
  def create
        #binding.pry
        @client = Client.new(client_params)

    # la methode va ensuite sauver le client, on le save en base
        if @client.save #si jarrive à sauver le produit en base, ie sil passe les validations du Models/concerns/client.rb

        #et après, on redirige vers la page de listing de clients
        redirect_to clients_path

      else
        render :new
      end
        #si marche pas, renvoie le template new avec le formulaire qui a déjà des infos
        # BUT du IF elese = évite de ne rien prendre en compte dans l'affichage lors que la validation du produit échoue

  #on met un point darret là
  end

#afficher le formulaire pré rempli
  def edit
     #elle recup l'id dans l'URL
    # elle renvoie un template dans vues qui q le mm nom qu elle
  end

#recup infos et modifie en bas
  def update
    if @client.update(client_params)
      redirect_to clients_path
    else
      render :edit
    end
  end

  def destroy
#binding.pry
@client.destroy
redirect_to clients_path
  end

  private

  def client_params
    params.require(:client).permit(:name,:url,:tagline,:category)
    #on filtre les parametres à input en base
    #on empeche l'utilisateur d'ajouter nimporte quoi dans notre base
  end

def find_client
  @client = Client.find(params[:id])


end
end
