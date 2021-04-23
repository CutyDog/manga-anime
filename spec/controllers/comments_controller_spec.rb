require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  render_views

  describe '#create' do
    let(:art_craft) { create(:art_craft) }
    let(:user) { create(:user) }  
    let(:content) { 'comment' }

    let(:params) {
      {
        art_craft_id: art_craft.id,
        comment: {
          content: content
        }
      }
    }

    before do
      allow(controller)
        .to receive(:current_user)
        .and_return(user)
      post :create, params: params
    end

    it "is successed" do 
      expect(response.status).to eq(302) 
    end  

    it "created correct comment" do 
      expect(Comment.find_by(user: user, art_craft: art_craft).content).to eq(content)
    end     
  end
end
