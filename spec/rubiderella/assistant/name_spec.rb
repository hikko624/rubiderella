# frozen_string_literal: true

RSpec.describe Rubiderella::Assistant::Name do
  describe '#full' do
    subject { Rubiderella::Assistant.find_by_key(assistant_name).name }
    where(:input, :full_name) do
      [
        [:senkawa_chihiro, '千川ちひろ']
      ]
    end

    with_them do
      let(:assistant_name) { input }
      it 'should return idol full name' do
        expect(subject.full).to eq full_name
      end
    end
  end

  describe '#full_kana' do
    subject { Rubiderella::Assistant.find_by_key(assistant_name).name }
    where(:input, :full_name_kana) do
      [
        [:senkawa_chihiro, 'せんかわちひろ']
      ]
    end

    with_them do
      let(:assistant_name) { input }
      it 'should return idol full name kana' do
        expect(subject.full_kana).to eq full_name_kana
      end
    end
  end
end
