class User < ApplicationRecord
  has_many :things

  has_many :messages

  has_secure_password
end
