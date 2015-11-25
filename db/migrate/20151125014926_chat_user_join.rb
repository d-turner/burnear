class ChatUserJoin < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.text :name
      t.text :owner
      t.timestamps null: false
    end

    create_table :users do |t|
      t.text :firstName
      t.text :lastName
      t.text :username => false #same as username: false
      t.text :password_hash => false
      t.text :email
      t.timestamps null: false
      # :false means that this is a database restriction,
      # i.e. under no circumstance will the database allow a null value.
    end

    create_table :chat_user, :id => false do |t|
      t.integer :user_id
      t.integer :chat_id
    end
  end
end
