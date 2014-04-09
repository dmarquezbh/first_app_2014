class WelcomeController < ApplicationController

  before_filter :authenticate_user!, except: [:index,:about]

  def index
    @name = "Daniel Marques"
  end

  def black
    @text = "Esta é uma página com um novo layout"
    render layout: 'application_black'
  end

  def about
    @address = "Rua Maranhão, 1283"
  end
end
