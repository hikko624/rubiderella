# frozen_string_literal: true

RSpec.describe Rubiderella::Trainer::Name do
  describe '#full' do
    subject { Rubiderella::Trainer.find_by_key(trainer_name).name }
    where(:input, :full_name) do
      [
        [:trainer, '青木明'],
        [:rookie_trainer, '青木慶'],
        [:veteran_trainer, '青木聖'],
        [:master_trainer, '青木麗']
      ]
    end

    with_them do
      let(:trainer_name) { input }
      it 'should return trainer full name' do
        expect(subject.full).to eq full_name
      end
    end
  end

  describe '#full_kana' do
    subject { Rubiderella::Trainer.find_by_key(trainer_name).name }
    where(:input, :full_name_kana) do
      [
        [:trainer, 'あおきめい'],
        [:rookie_trainer, 'あおきけい'],
        [:veteran_trainer, 'あおきせい'],
        [:master_trainer, 'あおきれい']
      ]
    end

    with_them do
      let(:trainer_name) { input }
      it 'should return trainer  full name kana' do
        expect(subject.full_kana).to eq full_name_kana
      end
    end
  end
end
