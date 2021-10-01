FactoryBot.define do
  factory :loan do
    association :loanable, factory: :user

    name { "Vaccine loan" }
    description { "Due covid19 I have to lend you some money" }
    credit_score { 20 }
    amount { 1000000 }
  end
end
