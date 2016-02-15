require 'rails_helper'
require 'spec_helper'

describe Book do
  describe 'validations' do
    it { should validate_uniqueness_of(:ISBN_number) }
    it { should validate_presence_of(:author) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:year) }
    it { should validate_presence_of(:publisher) }

    describe '#ISBN_number' do
      let(:book) { build(:book, ISBN_number: 12345678) }

      it 'contains minimum 10 characters' do
        expect(book).to_not be_valid
      end
    end

    describe '#year' do
      let(:book) { build(:book, year: 999) }

      it 'contains minimum 4 characters' do
        expect(book).to_not be_valid
      end
    end
  end
end
