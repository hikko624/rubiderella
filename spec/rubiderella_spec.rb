RSpec.describe Rubiderella do
  let(:idols) { Cinderella.all }
  describe 'Cinderella Module' do
    it 'Cinderella Idols Count' do
      expect(idols.count).to eq(190)
    end
  end
end
