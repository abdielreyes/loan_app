class CreateLenders < ActiveRecord::Migration[6.1]
  def change
    create_table :lenders do |t|
      t.string :name, null:false
      t.string :lastname, null:false
      t.integer :phone, null:true
      t.string :email , null:false
      t.string :encrypted_password, null:false

      t.timestamps
    end
  end
end
