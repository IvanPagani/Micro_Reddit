class User < ApplicationRecord  
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :username, presence: true, uniqueness: true, length: { maximum: 20 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
end
