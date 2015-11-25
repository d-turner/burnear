class Chat < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates :name,
            presence: true,
            length: {maximum: 140}
end
