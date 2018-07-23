class WelcomeController < ApplicationController
  def index
  end

  def sample
  	@controller_message = "Hello From Controller"
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


end
