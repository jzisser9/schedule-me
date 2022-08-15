class Event < ApplicationRecord
  validates_presence_of :name, :starts_at, :ends_at
end
