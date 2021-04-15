require 'rails_helper'

RSpec.describe ArtCraft, type: :model do
  describe '#display_category' do
    context 'category is comics' do
      it 'return マンガ' do
        art_craft = ArtCraft.new(title: 'title')
        art_craft.comics!

        expect(art_craft.display_category).to eq('マンガ')
      end
    end
    context 'category is animes' do
      it 'return アニメ' do
        art_craft = ArtCraft.new(title: 'title')
        art_craft.animes!

        expect(art_craft.display_category).to eq('アニメ')
      end
    end    
  end
end
