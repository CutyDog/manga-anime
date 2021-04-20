require 'rails_helper'

RSpec.describe ArtCraftsController, type: :controller do
  render_views
  
  describe '#search' do
    let(:art_craft) { create(:art_craft) }
    let(:params) do
      {
        keyword: 'keyword'
      }
    end
    it "is success" do
      get :search, params: params
      expect(response.status).to eq(200)
    end
  end

  describe '#favorite' do

    it "is success" do
      get :favorite
      expect(response.status).to eq(200)
    end  
  end  
end
