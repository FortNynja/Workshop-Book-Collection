class User < ApplicationRecord
  validates :username, presence: true
  validates :username, uniqueness: true
  has_many :reviews
  has_many :reviewed_books, through: :reviews, source: :book
end
