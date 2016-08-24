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


end
