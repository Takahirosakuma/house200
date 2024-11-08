class Post < ApplicationRecord
  belongs_to :user
  has_many :favorites,  dependent: :destroy
  has_one_attached :image do |attachable|
    attachable.variant :display, resize_to_limit: [500, 500]
  end
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :title,   presence: true, length: { maximum: 50 }
  validates :content, presence: true, length: { maximum: 800 }
  validates :image,   content_type: { in: %w[image/jpeg image/gif image/png],
                                      message: "must be a valid image format" },
                      size:         { less_than: 5.megabytes,
                                      message:   "should be less than 5MB" }

  def self.ransackable_attributes(auth_object = nil)
    ["title","content", "prefecture", "city", "score"]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
