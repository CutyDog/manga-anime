require 'rails_helper'

RSpec.describe FavoritesController, type: :controller do
  render_views

  describe '#create' do
    let(:art_craft) { create(:art_craft) }
    let(:user) { create(:user) }  

    let(:params) {
      {
        art_craft_id: art_craft.id
      }
    }

    before do
      allow(controller)
        .to receive(:current_user)
        .and_return(user)
      post :create, params: params
    end

    it "status is 302" do 
      expect(response.status).to eq(302)
    end

    it "created correct favorite_art_craft" do
      expect(FavoriteArtCraft.find_by(user: user, art_craft: art_craft).present?).to be_truthy
    end    
  end
end
