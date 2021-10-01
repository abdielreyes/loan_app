class Lender < ApplicationRecord
  has_many :loans, as: :loanable

  validates :name
  validates :lastname
  validates :email

  validates :password, length: { minimum: 8, maximum: 30 }
  validate :password_complexity

  def password_complexity
    return if password.blank?

    errors.add :password, 'must include a special character' unless password&.match?(/[#?!@$%^&*-]/)
    errors.add :password, 'must include a capital character' unless password&.match?(/[A-Z]/)
    errors.add :password, 'must include a lowecase character' unless password&.match?(/[a-z]/)
  end
end
