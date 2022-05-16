class OwnersController < ApplicationController

    def show 
        @owner = Owner.find(params[:id])
        @owner_calif = ((@owner.atention + @owner.respuesta + @owner.amabilidad)/3).round(2)
    end

    def create 
        @owner= Owner.new(owner_params)
        if @owner.save
        flash[:success] = "Se creó la propiedad correctamente"
        redirect_to properties_index_path
        else
        flash[:danger] = "hubó un error al crear la propiedad"
        redirect_to properties_index_path
        end
    end
    def edit 
        @owner = Owner.find(params[:id])
    end

    def update
        @owner = Owner.find(params[:id])
        if @owner.update(owner_params)
          flash[:success] = "Se creó la propiedad correctamente"
          redirect_to properties_index_path
        else
          flash[:danger] = "hubó un error al crear la propiedad"
          redirect_to properties_index_path
        end
    end

    private 
    def owner_params
        params.require(:owner).permit(:name, :atention, :respuesta, :amabilidad)
    end
end
