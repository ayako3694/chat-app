class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user 
  has_one_attached :image
  validates :content, presence: true, unless: :was_attached?
#  validates :content, presence: trueは空の投稿は保存させませんという設定を意味している
  def was_attached?
    self.image.attached?
  end
end