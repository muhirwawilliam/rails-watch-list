class Movie < ApplicationRecord
  # A movie must have a unique title and an overview.
  validates :title, presence: :true, uniqueness: true
  validates :overview, presence: :true
  has_many :bookmarks
end
