class ChatsUsers < ActiveRecord::Migration
  def change
    create_table :chats_users, :id => false do |t|
      t.integer :user_id
      t.integer :chat_id
    end
  end
end
