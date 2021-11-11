class Review < ApplicationRecord
  # belongs_to :user
  belongs_to :book
  validates :content, presence: true
  validates :name, presence: true
end
