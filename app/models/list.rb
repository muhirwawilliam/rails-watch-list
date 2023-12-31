class List < ApplicationRecord
  # A list must have a unique name.
  validates :name, presence: :true, uniqueness: :true
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
end
