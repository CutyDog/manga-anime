require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  render_views

  describe '#create' do
    let(:art_craft) { create(:art_craft) }
    let(:user) { create(:user) }  

    it "is successed ver.1" do 
      one = create(:comment, art_craft_id: art_craft.id, user_id: user.id)
      expect(one.id).to eq(1)
    end  

    it "is successed ver.2" do 
      two = create(:comment, art_craft_id: art_craft.id, user_id: user.id)
      expect(two.id).to eq(2)
    end     

    it "uploaded correct content" do
      three = create(:comment, art_craft_id: art_craft.id, user_id: user.id)
      expect(three.content).to eq('content')
    end
  end
end
