class Author < ApplicationRecord
  validates :name, presence: true
  #attr_accessible :email
  has_many :posts
end
