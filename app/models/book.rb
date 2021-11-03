class Book < ApplicationRecord
  belongs_to :publisher
  has_many :reviews

  validates :title, presence: true
end
