class Book < ApplicationRecord
  belongs_to :publisher
  has_many :reviews
  has_and_belongs_to_many :authors

  validates :title, presence: true

  def author_names
    self.authors.map(&:name)
    # self.authors.map do |author|
    #   author.name
    # end
  end
end
