class PublicosController < ApplicationController

 def index
  @notas = Note.where(publico: true)
 	
 	if user_signed_in?
    redirect_to :controller=>'dashboards', :action => 'index'
    end


 end

 def recientes
 @recientes = Note.order(created_at: :desc).where(publico: true) 


 end 

 def antiguos

 @antiguos = Note.order(created_at: :asc).where(publico: true)  

 end 

 def tematica

@tematica = Note.where(topic: params[:tematica], publico: true)  


 end 

end
