class StaticPagesController < ApplicationController
  def index
    if Property.any?
      @properties = Property.all.shuffle
    end
  end
end
