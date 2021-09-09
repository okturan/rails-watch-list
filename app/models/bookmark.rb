class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates_length_of :comment, minimum: 6
  validates_uniqueness_of :movie, scope: :list
end
