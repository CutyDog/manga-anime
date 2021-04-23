require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  render_views

  describe '#top' do
    let(:art_craft) { create(:art_craft) }
    
    it "is success" do
      get :top
      expect(response.status).to eq(201)
    end  
  end

end
