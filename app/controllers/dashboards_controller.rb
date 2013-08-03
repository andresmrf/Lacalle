class DashboardsController < ApplicationController
before_action :authenticate_user!
	
	def index
     @notas = Note.where(publico: false)
     fresh_when(@notas)
        
    end
    
    def show
	
	end
	
	def update
	@nota = Note.find(params[:id])	
	
	
	

    respond_to do |format|
    if @nota.update(publico: true)
    format.html { redirect_to action: "index" }
    format.js
    end

    end

	end
  

end
