class Item < ApplicationRecord
  belongs_to :genre

  has_one_attached :image

  validates :image,        presence: true
  validates :name,         presence: true, uniqueness: true
  validates :introduction, presence: true
  validates :genre_id,     presence: true
  validates :price,        presence: true


  # 消費税8%
  # def add_tax_price
  #   (self.price * 1.08).round
  # end

end