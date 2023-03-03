class Message < ApplicationRecord
    validates :body, presence: true
    validates :username, presence: true
    
    # optional: add associations to other models
    # belongs_to :user
    # has_many :comments
    
    # optional: add scopes for querying
    # scope :recent, -> { order(created_at: :desc) }
    
    # optional: add methods for handling business logic
    # def send_notification
    #   NotificationMailer.with(message: self).new_message.deliver_now
    # end
  end
  