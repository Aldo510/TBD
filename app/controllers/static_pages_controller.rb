class StaticPagesController < ApplicationController
  def index
    if Property.any?
      @properties = Property.all
    end
  end
end
