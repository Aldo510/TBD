class PropertiesController < ApplicationController
  def index
    unless user_signed_in?
      redirect_to root_path
    end
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @owner = Owner.create(name: " ")
    @property= current_user.properties.build(property_params)
    @property.owner_id = @owner.id
    if @property.save
      flash[:success] = "Se creó la propiedad correctamente"
      redirect_to owner_edit_path(@property.owner_id)
    else
      flash[:danger] = "hubó un error al crear la propiedad"
      redirect_to properties_index_path
    end
  end

  def destroy
    @property = Property.find(params[:id])
    if @property.destroy
      flash[:success] = "Se borró la propiedad exitosamente"
      redirect_to properties_index_path
    else
      flash[:danger] = "Hubó un problema al borrar la propiedad"
      redirect_to properties_index_path
    end

    
  end

  def update
    @property= Property.find(params[:id])
    if @property.update(property_params)
      flash[:success] = "Se creó la propiedad correctamente"
      redirect_to properties_index_path
    else
      flash[:danger] = "hubó un error al crear la propiedad"
      redirect_to properties_index_path
    end
  end

  private

  def property_params
    params.require(:property).permit(:name, :description, :image, :address, :rating)
  end

end
