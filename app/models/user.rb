class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true,
            length: { maximum: 50, minimum: 3 }

  has_many :posts
  has_many :comments
end
