class RenameConversationId < ActiveRecord::Migration[5.2]
  def change
    rename_column :messages, :conversation_id, :chat_room_id
  end
end
