class Loan < ApplicationRecord
  belongs_to :loanable, polymorphic: true

  validates :credit_score, presence: true
  validates :amount, presence: true
  validates :description, presence: true
end
