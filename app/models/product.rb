class Product < ApplicationRecord
	belongs_to :supplier
	has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products
  validates :price, numericality: {greater_than: 0}
  validates :name, presence: true 
  validates :description, presence: true


  def tax
    price * 0.09
  end
end
