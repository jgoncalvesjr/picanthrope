class Image < ApplicationRecord
  has_one_attached :file
  belongs_to :user
  validates :file, presence: true
end
