# frozen_string_literal: true

RSpec.describe Rubiderella::Trainer do
  it 'extended Person Class' do
    expect(Rubiderella::Trainer.superclass).to eq Rubiderella::Person
  end

  describe '#all' do
    let(:trainer_count) { 4 }
    it 'have four trainer' do
      expect(Rubiderella::Trainer.all.count).to eq trainer_count
    end
  end

  describe '#find_by_name' do
    describe 'find name by key' do
      subject { Rubiderella::Trainer.find_by_key(trainer_name) }
      where(:input, :last, :last_kana, :first, :first_kana) do
        [
          [:trainer, '青木', 'あおき', '明', 'めい'],
          [:rookie_trainer, '青木', 'あおき', '慶', 'けい'],
          [:veteran_trainer, '青木', 'あおき', '聖', 'せい'],
          [:master_trainer, '青木', 'あおき', '麗', 'れい']
        ]
      end

      with_them do
        let(:trainer_name) { input }
        it 'should return correct trainer' do
          expect(subject.name.last).to eq last
          expect(subject.name.first).to eq first
          expect(subject.name.last_kana).to eq last_kana
          expect(subject.name.first_kana).to eq first_kana
        end
      end
    end

    describe 'not find name by key' do
      subject { Rubiderella::Trainer.find_by_key(trainer_name) }
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
          expect { subject }.to raise_error(Rubiderella::UnknownTrainerError)
        end
      end
    end
  end
end
