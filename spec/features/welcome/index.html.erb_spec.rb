require 'spec_helper'

describe ".index", type: :feature do

  it 'access home page' do
    
    visit root_path
    page.should have_content("Hello Daniel Marques!") 

  end

end
