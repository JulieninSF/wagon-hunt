class ClientsController < ApplicationController



def index

#if params[:filter]
#@clients = CLIENTS.select{|client| client[:category]== params[:filter]}
#else
@clients = Client.all
#@clients = ["John", "Daniel", "Peter"]
#end

end

def show
  #si quelqu'un écrit 11, alors cest 11
  #on va dire que l'id cest l'indice du tableau (car on a pas encore de data base)

#methode params id à mettre en integer pour le lire dans le tableau
  @client = Client.find(params[:id])
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
  end

#recup infos et modifie en bas
  def update
  end

  def destroy
  end

  private

  def client_params
    params.require(:client).permit(:name,:url)
    #on filtre les parametres à input en base
    #on empeche l'utilisateur d'ajouter nimporte quoi dans notre base
  end

end
