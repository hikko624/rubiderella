RSpec.describe Rubiderella::Idol do

  describe '#all' do
    let(:cinderella_count) { 190 }
    it '190 idols in cinderella' do
      expect(Rubiderella::Idol.all.count).to eq cinderella_count
    end
  end

  describe '#find_by_name' do
    describe 'find name by key' do
      subject { Rubiderella::Idol.find_by_key(idol_name).name }
      where( :input, :last, :last_kana, :first, :first_kana ) do
        [
            [:kanzaki_ranko, '神崎', 'かんざき', '蘭子', 'らんこ'],
            [:ohishi_izumi, '大石', 'おおいし', '泉', 'いずみ'],
            [:shimamura_uzuki, '島村', 'しまむら', '卯月', 'うずき'],
            [:shibuya_rin, '渋谷', 'しぶや', '凛', 'りん'],
            [:honda_mio, '本田', 'ほんだ', '未央', 'みお']
        ]
      end

      with_them do
        let(:idol_name) { input }
        it { is_expected.to eq({ :last=>last, :last_kana=>last_kana, :first=>first, :first_kana=>first_kana }) }
      end
    end

    describe 'not find name by key' do
      subject { Rubiderella::Idol.find_by_key(idol_name) }
      where( :input ) do
        [
            [:amami_haruka],
            [:tendo_teru],
            [:sakuragi_mano],
            [:kasuga_mirai],
            [:aaa]
        ]
      end

      with_them do
        let(:idol_name) { input }
        it { expect { subject }.to raise_error(Rubiderella::Idol::UnknownIdolError) }
      end
    end

  end
end
