class User < ApplicationRecord
  has_many :things

  # has_many :messages
  has_many :sent_messages, class_name:"Message", foreign_key:"sender_id"
  has_many :receieved_messages, class_name:"Message", foreign_key:"recipient_id"

  has_secure_password
end
