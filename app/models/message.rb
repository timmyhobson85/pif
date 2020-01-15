class Message < ApplicationRecord
  # belongs_to :user, optional: true
  belongs_to :sender, class_name: "User", optional: true
  belongs_to :recipient, class_name: "User", optional: true

  belongs_to :thing, optional: true
end
