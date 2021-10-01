class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false, default: ""
      t.string :email,null: false, default: "", uniqueness: true
      t.string :username, null:false, default: ""
      t.string :encrypted_password, null: false, default: ""
      
      t.timestamps null: false
    end
  end
end
