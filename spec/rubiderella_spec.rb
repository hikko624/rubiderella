RSpec.describe Rubiderella do
  let(:idols) { CinderellaGirls.idol.all }
  describe 'Cinderella Module' do
    it 'Cinderella Idols Count' do
      expect(idols.count).to eq(190)
    end
  end
end
