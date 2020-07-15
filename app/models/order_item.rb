class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product_color, optional: true
  belongs_to :product, optional: true


  validates :price_product, presence: true, numericality: {numericality: true, greater_than: Settings.quantity_min}


  delegate :name, :avatar, to: :product, prefix: true

  after_save :update_quantity

  private
  def update_quantity
    binding.pry
      product_quantity = product_color.quantity - quantity
      product_color.update_attributes quantity: product_quantity
  end
end
