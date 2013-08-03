class PublicosController < ApplicationController

 def index
  @notas = Note.where(publico: true)
  fresh_when(@notas) 	
 	if user_signed_in?
    redirect_to :controller=>'dashboards', :action => 'index'
    end


 end

 def recientes
 @recientes = Note.order(created_at: :desc).verdadero
 fresh_when(@recientes)

 end 

 def antiguos

 @antiguos = Note.order(created_at: :asc).verdadero
 fresh_when(@antiguos)

 end 

 def tematica

@tematica = Note.where(topic: params[:tematica], publico: true)  
fresh_when(@tematica)


 end 

end
