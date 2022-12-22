class Message < ApplicationRecord
  belongs_to :user

  broadcasts_to ->(_message) { 'messages' }, inserts_by: :append, target: 'message-display'
end
