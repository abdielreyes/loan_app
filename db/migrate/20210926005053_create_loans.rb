
class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans, id: :uuid do |t|
      t.string :name
      t.string :description
      t.integer :credit_score
      t.integer :amount
      
      t.timestamps
      t.references :loanable, polymorphic: true
    end
  end
end
