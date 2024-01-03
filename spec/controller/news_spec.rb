require 'rails_helper'
require 'factory_bot'
RSpec.describe NewsController, type: :controller do
  let(:post1) { FactoryBot.create(:news) }
  let(:valid_attributes) { attributes_for(:news) }


  describe 'GET #index' do
    it 'returns a successful response' do    
      get :index
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'return  a successful response' do 
      get :show ,params: { id: post1.id }
      expect(response).to be_successful
    end
  end

  describe 'GET #edit' do
  it 'returns a successful response' do 
    get :edit, params: { id: post1.id}
    expect(response).to be_successful
  end 
end 


  describe 'Get #new' do
   it 'return a successful response' do
    get :new 
    expect(response).to be_successful
   end
  end



#   describe 'Get #update' do
#   it 'returns a successful response' do
#     get :update 
#     expect(response).to be_successful
#   end 
# end 


  describe 'Post #create' do
    it 'return a successful response' do
     post :create, params: { news: valid_attributes }
     expect(response).to have_http_status(:ok)
   end
  end
end