class Movie < ApplicationRecord
  validates :title, :original_title, :director, :year, :country, :duration, presence: true
end
