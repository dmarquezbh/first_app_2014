require 'spec_helper'


describe UsersController do

  let(:admin_user) { User.create name: "a", email: "a@test.com", age: 1,
                                 password: "12345", password_confirmation: "12345" }

  before(:each) do
    sign_in admin_user
  end

  describe 'GET /index' do


    it 'assign empty array when there are no users ' do
      get :index
      assigns(:users).should eq([admin_user])
    end

    it 'assign single sized empty array when there is only one user ' do
      user = FactoryGirl.create(:user_bart)
             #User.create name: "name", email: "email@test.com",
             #            age: 12, password: "12345", password_confirmation: "12345"
      get :index
      assigns(:users).should eq( [admin_user, user] )
    end
  end

  describe 'GET /new' do

    it 'assigns @user as a new object' do

       get :new
       assigns(:user).should be_a_new(User)
       #assigns(:user).should be_a(User)
       #assigns(:user).persisted?.should be_a_new(User)

    end

  end

end
