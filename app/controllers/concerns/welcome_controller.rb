class WelcomeController < ApplicationController

  def index
    @name = "Daniel Marques"
  end

  def black
    @text = "Esta é uma página com um novo layout"
    render layout: 'application_black'
  end


end
