# frozen_string_literal: true

RSpec.describe CinderellaGirls::Assistant do
  let(:idols) { CinderellaGirls.assistant.all }
  describe 'Cinderella Module' do
    it 'Cinderella Assistant Count' do
      expect(idols.count).to eq(1)
    end
  end
end
