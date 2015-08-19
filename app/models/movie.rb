class Movie < ActiveRecord::Base
  validates :title, presence: true, length: { in: 2..50 }
  validates :length, presence: true, numericality: { greater_than: 0, less_than:500 }
  validates :release_year, presence: true, numericality: {greater_than: 1800, less_than:2100, only_integer: true }
  validates :rating, presence: true
end
