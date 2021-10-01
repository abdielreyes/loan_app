require 'rails_helper'

RSpec.describe Loan, type: :model do
  context "when loan has valid attributes" do
    let :loan do
      FactoryBot.create :loan
    end
      it 'has name' do
        expect(loan.name).to be_present
      end
      it 'has description' do
        expect(loan.description).to be_present
      end
      it 'has credit score' do
        expect(loan.credit_score).to be_present
      end
      it 'has an amount' do
        expect(loan.amount).to be_present
      end
  end

end
