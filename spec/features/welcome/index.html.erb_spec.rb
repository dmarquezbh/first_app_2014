require 'spec_helper'

describe ".index", type: :feature do

  it 'access home page' do
    
    visit root_path
    page.should have_content("Bem vindo usuário Daniel Marques!") 

  end

  it 'access public pages' do 
    
    visit root_path
    page.should have_content("Daniel Marques")

    click_link "Sobre"
    page.should have_content("Rua Maranhão, 1283")

  end

end
