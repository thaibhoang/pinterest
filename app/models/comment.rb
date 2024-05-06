class Comment < ApplicationRecord
  belongs_to :pin
  belongs_to :user
  belongs_to :parent, class_name: 'Comment', optional: true
  has_many :replies, class_name: 'Comment', foreign_key: :parent_id, dependent: :destroy
  has_many :likes, as: :likeable

  scope :is_root, -> { where(parent_id: nil) }

  validates :body, presence: true

  def pin_comment?
    parent_id.nil?
  end

  def newest_reply
    replies.order(id: :desc).first
  end
end
