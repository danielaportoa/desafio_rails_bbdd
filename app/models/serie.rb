class Serie < ApplicationRecord
  validates :title, :original_title, :season, :director, :year, :country, :duration, :sinopsis, presence: true
end
