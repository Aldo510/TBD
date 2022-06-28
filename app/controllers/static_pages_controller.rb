class StaticPagesController < ApplicationController
  def index
    if Property.any?
      @properties2 = Property.all.shuffle
      if params[:query].present?
         @properties =  Property.where("address LIKE ?", "%#{params[:query]}%")
      else
        @properties = Property.all.shuffle
      end
    end
  end
end
