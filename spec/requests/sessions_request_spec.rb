require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  let!(:user) { create(:user, password: password) }
  let(:password) { '123456' }
  
  describe 'post' do
    
    shared_examples 'it fails to authenticate' do
      it 'redirects to session page' do
        expect(response).to redirect_to '/sessions/new'       
      end
      it 'displays error message' do
        expect(flash[:notice]).to eq 'Incorrect username or password, please try again!'
      end
    end
    
    context 'with valid credentials' do
      before do
        post '/sessions', params: {username: user.username, password: password }
      end
      it 'redirects to root' do
        expect(response).to redirect_to '/'       
      end
      
    end
    
    context 'with invalid username' do
      before do
        post '/sessions', params: {username: 'xablau', password: password }
      end
      include_examples 'it fails to authenticate'
    end

    context 'with invalid password' do
      before do
        post '/sessions', params: {username: user.username, password: 'mimimi' }
      end
      include_examples 'it fails to authenticate'
    end

  end

  describe 'delete' do
    before do
      post '/sessions', params: {username: user.username, password: password }
      delete '/sessions'
      follow_redirect!
    end
    it 'does not display a Logout link at the navbar' do
      expect(response.body).to_not include 'LogoutLink'
    end
  end

end
