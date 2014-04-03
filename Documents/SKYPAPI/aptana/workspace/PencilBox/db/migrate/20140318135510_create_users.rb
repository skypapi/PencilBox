class CreateUsers < ActiveRecord::Migration
    
  def change
    create_table :users do |t|
      t.integer :userid
      t.string :username
      t.string :password_digest
      t.string :firstname
      t.string :lastname
      t.integer :userprofile
      t.boolean :isactive
      t.text :remarks

      t.timestamps
    end
  end
end
