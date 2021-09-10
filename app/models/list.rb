class List < ApplicationRecord
  has_one_attached :photo
  validates :name, uniqueness: true, presence: true
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
end
