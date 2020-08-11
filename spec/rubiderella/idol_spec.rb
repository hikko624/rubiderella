# frozen_string_literal: true

RSpec.describe Rubiderella::Idol do
  describe '#all' do
    let(:cinderella_count) { 190 }
    it '190 idols in cinderella' do
      expect(Rubiderella::Idol.all.count).to eq cinderella_count
    end
  end

  describe '#find_by_name' do
    describe 'find name by key' do
      subject { Rubiderella::Idol.find_by_key(idol_name) }
      where(:input, :last, :last_kana, :first, :first_kana) do
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
        it 'should return correct idol' do
          expect(subject.name.last).to eq last
          expect(subject.name.first).to eq first
          expect(subject.name.last_kana).to eq last_kana
          expect(subject.name.first_kana).to eq first_kana
        end
      end
    end

    describe 'not find name by key' do
      subject { Rubiderella::Idol.find_by_key(idol_name) }
      where(:input) do
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
        it 'should return error' do
          expect { subject }.to raise_error(Rubiderella::UnknownIdolError)
        end
      end
    end
  end
end
