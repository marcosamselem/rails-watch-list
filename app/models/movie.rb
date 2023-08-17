class Movie < ApplicationRecord
  validates :title, uniqueness: true
  has_many :bookmarks
  validates :title, presence: true
  validates :overview, presence: true
end
