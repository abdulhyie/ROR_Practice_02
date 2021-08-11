class Event < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :description, presence: true
  validates :event_date, presence: true
  validates :location, presence: true
end
