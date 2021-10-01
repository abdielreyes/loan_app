class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :loans, as: :loanable

  validates :name, presence: true
  validates :email, presence: true
  validates :username, presence: true
  validates :password, length: { minimum: 8, maximum: 30 }
  validate :password_validate

  def password_validate
    return if password.blank?

    errors.add :password, 'must include a special character' unless password&.match?(/[#?!@$%^&*-]/)
    errors.add :password, 'must include a capital character' unless password&.match?(/[A-Z]/)
    errors.add :password, 'must include a lowecase character' unless password&.match?(/[a-z]/)
  end
end
