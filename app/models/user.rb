class User < ActiveRecord::Base
  has_and_belongs_to_many :chats
  validates :username,
            presence: true,
            uniqueness: true
  validates :password_hash,
            presence: true
  validates :email,
            presence: true,
            uniqueness: true,
            format: {with: /@/}
end
