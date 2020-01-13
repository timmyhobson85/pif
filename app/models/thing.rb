class Thing < ApplicationRecord
  belongs_to :user, optional: true
  has_many :messages

  enum act: [:need, :offer]
  enum thing_type: [:item, :task]
  enum condition: [:newitem, :useditem]
  enum urgency: [:low, :medium, :high, :dire]

end
