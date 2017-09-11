class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.references :user
      t.string :chat

      t.timestamps
    end
  end
end
