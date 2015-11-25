class CreateChats < ActiveRecord::Migration
  def change
     create_table :chats do |t|
      t.text :name
      t.text :admin
      t.timestamps null: false
    end
  end
end
