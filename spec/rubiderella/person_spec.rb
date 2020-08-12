# frozen_string_literal: true

RSpec.describe Rubiderella::Person do
  describe '#config' do
    it 'raise NotImplementederror' do
      expect { Rubiderella::Person.config }.to raise_error(NotImplementedError)
    end
  end

  describe '#names' do
    it 'raise NotImplementederror' do
      expect { Rubiderella::Person.names }.to raise_error(NotImplementedError)
    end
  end

  describe '#valid' do
    it 'raise NotImplementederror' do
      expect { Rubiderella::Person.valid?(:kanzaki_ranko) }.to raise_error(NotImplementedError)
    end
  end

  describe '#all' do
    it 'raise Notimplementederror' do
      expect { Rubiderella::Person.all }.to raise_error(NotImplementedError)
    end
  end

  describe '#find_by_key' do
    it 'raise Notimplementederror' do
      expect { Rubiderella::Person.find_by_key(:kanzaki_ranko) }.to raise_error(NotImplementedError)
    end
  end
end
