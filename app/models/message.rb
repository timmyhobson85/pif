class Message < ApplicationRecord
  belongs_to :user, optional: true

  belongs_to :item_id, optional: true
end
