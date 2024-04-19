class Comment < ApplicationRecord
  belongs_to :pin
  belongs_to :user
  belongs_to :parent, class_name: "Comment", optional: true
  has_many :replies, class_name: "Comment", foreign_key: :parent_id, dependent: :destroy

  scope :is_parent, where(parent_id: nil) 
  validates :body, presence: true
  scope :newest_reply, order(created_at: :desc).first
end
