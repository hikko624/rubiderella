# frozen_string_literal: true

RSpec.describe Rubiderella::Assistant::Birthday do
  describe '#date' do
    subject { Rubiderella::Assistant.find_by_key(assistant_name) }
    where(:input, :assistant_birthday) do
      [
        [:senkawa_chihiro, '11月28日']
      ]
    end

    with_them do
      let(:assistant_name) { input }
      it 'should be same birthday' do
        expect(subject.birthday.date).to eq assistant_birthday
      end
    end
  end
end
