class Message < ApplicationRecord
  belongs_to :user, optional: true

  belongs_to :thing, optional: true
end
