class List < ApplicationRecord
  validates :name, uniqueness: true
  has_many :bookmarks, dependent: :destroy
  validates :name, presence: true
  has_many :movies, through: :bookmarks
  has_one_attached :photo
end
