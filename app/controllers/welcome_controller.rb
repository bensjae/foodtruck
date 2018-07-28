class WelcomeController < ApplicationController
  def index
  end

  def queries
      @FoodName = FoodItem.name
  end

  def menu
    if params[:section]
      @section = Section.where(name: params[:section]).first
    end

  end

  def contact_us

  end

  def order

  end

  def form_submit
      session[:value] = params[:value]
      lookup = params[:lookup]
  end


end
