# frozen_string_literal: true

RSpec.describe Rubiderella::Trainer::Birthday do
  describe '#date' do
    subject { Rubiderella::Trainer.find_by_key(trainer_name) }
    where(:input, :trainer_birthday) do
      [
        [:rookie_trainer, '3月10日'],
        [:trainer, '6月10日'],
        [:veteran_trainer, '9月10日'],
        [:master_trainer, '12月10日']
      ]
    end

    with_them do
      let(:trainer_name) { input }
      it 'should be same birthday' do
        expect(subject.birthday.date).to eq trainer_birthday
      end
    end
  end
end
