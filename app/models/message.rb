class Message < ActiveRecord::Base
  belongs_to :chat
  validates :content,
      presence: true,
      length: {maximum: 140}
end
