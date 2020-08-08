Rspec.describe Rubiderella::Idol::Name do
  describe '#full' do
    subject { Rubiderella::Idol.find_by_key(idol_name).name }
    where(:input, :full_name) do
      [
        [:kanzaki_ranko, '神崎蘭子'],
        [:shimamura_uzuki, '島村卯月'],
        [:shibuya_rin, '渋谷凛'],
        [:honda_mio, '本田未央']
      ]
    end

    with_them do
      let(:idol_name) { input }
      it 'should return idol full name' do
        expect(subject.full).to eq full_name
      end
    end
  end

  describe '#full_kana' do
    subject { Rubiderella::Idol.find_by_key(idol_name).name }
    where(:input, :full_name_kana) do
      [
        [:kanzaki_ranko, 'かんざきらんこ'],
        [:shimamura_uzuki, 'しまむらうずき'],
        [:shibuya_rin, 'しぶやりん'],
        [:honda_mio, 'ほんだみお']
      ]
    end

    with_them do
      let(:idol_name) { input }
      it 'should return idol full name kana' do
        expect(subject.full_kana).to eq full_name_kana
      end
    end
  end
end
