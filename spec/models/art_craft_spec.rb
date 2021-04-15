require 'rails_helper'

RSpec.describe ArtCraft, type: :model do
  describe '#display_category' do
    subject { art_craft.display_category }

    let(:art_craft) { create(:art_craft, category: category) }

    context 'category is comics' do
      let(:category) { 'comics' }

      it 'return マンガ' do
        is_expected.to eq('マンガ')
      end
    end

    context 'category is animes' do
      let(:category) { 'animes' }

      it 'return アニメ' do
        is_expected.to eq('アニメ')
      end
    end    
  end
end
