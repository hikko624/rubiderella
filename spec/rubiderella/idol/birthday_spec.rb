RSpec.describe Rubiderella::Idol::Birthday do
  describe '#date' do
    subject { Rubiderella::Idol.find_by_key(idol_name) }
    where(:input, :idol_birthday) do
      [
        [:kanzaki_ranko, '4月8日'],
        [:shimamura_uzuki, '4月24日'],
        [:shibuya_rin, '8月10日'],
        [:honda_mio, '12月1日']
      ]
    end

    with_them do
      let(:idol_name) { input }
      it 'should be same birthday' do
        expect(subject.birthday.date).to eq idol_birthday
      end
    end
  end
end
