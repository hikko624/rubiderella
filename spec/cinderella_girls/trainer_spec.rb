# frozen_string_literal: true

RSpec.describe CinderellaGirls::Trainer do
  let(:idols) { CinderellaGirls.trainer.all }
  describe 'Cinderella Module' do
    it 'Cinderella Trainer Count' do
      expect(idols.count).to eq(4)
    end
  end
end
