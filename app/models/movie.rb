class Movie < ApplicationRecord
  validates :title, :overview, uniqueness: true, presence: true
  has_many :bookmarks
end
