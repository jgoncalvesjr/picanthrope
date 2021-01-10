require 'rails_helper'

RSpec.describe Image, type: :model do
  describe 'validations' do

    let(:image) { build(:image) }
    subject { image.valid? }

    it 'saves the image successfully' do
      expect(image.save).to be true
    end

    context 'when there is no file' do
      before do
        image.file = nil
      end

      it { is_expected.to be false }
    end

  end
end
