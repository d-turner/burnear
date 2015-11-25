class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :firstName
      t.text :lastName
      t.text :username
      t.text :password_hash
      t.text :email
      t.timestamps null: false
      # :false means that this is a database restriction,
      # i.e. under no circumstance will the database allow a null value.
      # null: false === :null => false
    end
  end
end
