# frozen_string_literal: true

RSpec.describe Rubiderella::Assistant do
  it 'extended Person Class' do
    expect(Rubiderella::Assistant.superclass).to eq Rubiderella::Person
  end

  describe '#all' do
    let(:assistant_count) { 1 }
    it 'have one assistant' do
      expect(Rubiderella::Assistant.all.count).to eq assistant_count
    end
  end

  describe '#find_by_name' do
    describe 'find name by key' do
      subject { Rubiderella::Assistant.find_by_key(assistant_name) }
      where(:input, :last, :last_kana, :first, :first_kana) do
        [
          [:senkawa_chihiro, '千川', 'せんかわ', 'ちひろ', 'ちひろ']
        ]
      end

      with_them do
        let(:assistant_name) { input }
        it 'should return chihiro' do
          expect(subject.name.last).to eq last
          expect(subject.name.first).to eq first
          expect(subject.name.last_kana).to eq last_kana
          expect(subject.name.first_kana).to eq first_kana
        end
      end
    end

    describe 'not find name by key' do
      subject { Rubiderella::Assistant.find_by_key(trainer_name) }
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
        let(:trainer_name) { input }
        it 'should return error' do
          expect { subject }.to raise_error(Rubiderella::UnknownAssistantError)
        end
      end
    end
  end
end
