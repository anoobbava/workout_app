class Workout < ApplicationRecord
  validates_presence_of :date, :workout, :mood, :length
end
