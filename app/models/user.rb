class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  validates :email, presence: true, length: { maximum: 256 }, uniqueness: true
  validates :age, presence: true, length: { in: 0..150 }
end
