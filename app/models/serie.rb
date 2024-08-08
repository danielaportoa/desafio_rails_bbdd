class Serie < ApplicationRecord
  validates :title, :original_title, :season, :director, :year, :country, :duration, presence: true
end
