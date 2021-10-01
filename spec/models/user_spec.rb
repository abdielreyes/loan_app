require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when user has valid attributes' do
    let(:user)  {
      FactoryBot.create :user
    }

    it('has name') {
      expect(user.name).to be_present
    }

    it('has email') {
      expect(user.email).to be_present
    }

    it('has password') {
      expect(user.password).to be_present
    }
  end
  context 'when user has blank attributes' do
    subject(:user) {
      described_class.new
    }

    before { user.valid? }
    it("has name cant't be blank error"){
      expect(user.errors[:name]).to include "can't be blank"
    }
    it("has email cant't be blank error"){
      expect(user.errors[:email]).to include "can't be blank"
    }
    it("has password cant't be blank error"){
      expect(user.errors[:password]).to include "can't be blank"
    }
  end
  context 'when user has invalid attributes' do
    subject(:user){
      FactoryBot.build :user, email: 'email', password: 'passs1233'
    }
    before{
      user.valid?
    }
    it('has email errors'){
      expect(user.errors[:email]).not_to be_empty
    }
    it('has password errors'){
      expect(user.errors[:password]).not_to be_empty
    }
  end
end
