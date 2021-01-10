require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do

    let(:user) { build(:user) }
    subject { user.valid? }

    it 'saves the user successfully' do
      expect(user.save).to be true
    end

    context 'when first_name is blank' do
      before do
        user.first_name = nil
      end

      it { is_expected.to be false }
    end

    context 'when password is blank' do
      before do
        user.password = nil
      end

      it { is_expected.to be false }
    end

    context 'when password is too short' do
      before do
        user.password = '12345'
      end

      it { is_expected.to be false }
    end

    context 'when passwords do not match' do
      before do
        user.password = '123456'
        user.password_confirmation = '1234567'
      end

      it { is_expected.to be false }
    end

    context 'when username already exists' do
      before do
        create(:user, username: 'xablau')
        user.username = 'XAbLaU'
      end

      it { is_expected.to be false }
    end

  end
end
