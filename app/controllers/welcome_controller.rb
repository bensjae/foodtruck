class WelcomeController < ApplicationController
  def index
  end

  def queries
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
