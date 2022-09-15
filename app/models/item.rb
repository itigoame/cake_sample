class Item < ApplicationRecord
  belongs_to :genre

  has_one_attached :image

  validates :name, presence: true, uniqueness: true
  validates :introduction, presence: true
  validates :price, presence: true

end