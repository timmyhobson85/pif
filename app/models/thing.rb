class Thing < ApplicationRecord
  belongs_to :user, optional: true
  has_many :messages

  enum act: [:need, :offer]
  enum thing_type: [:item, :task]
  enum condition: [:newitem, :useditem]
  enum urgency: [:low, :medium, :high, :dire]

  # tell geocoder where to look to get the human-readable address string
  geocoded_by :location
  #tell geocoder to actually turn the above address into a latitude and longitude(by doing a lookup in a remote API) any time you create or update a Thing new item
  after_validation :geocode
end
