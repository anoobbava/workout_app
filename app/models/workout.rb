class Workout < ApplicationRecord
  has_many :exercises
  validates_presence_of :date, :workout, :mood, :length
end
