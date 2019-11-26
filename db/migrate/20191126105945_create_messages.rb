class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :sender_id
      t.string :recepient_id
      t.text :content
      t.integer :conversation_id

      t.timestamps
    end
  end
end