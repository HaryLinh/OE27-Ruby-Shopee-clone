class AddPoToProductcolros < ActiveRecord::Migration[5.2]
  def change
     add_reference :order_items, :product_colors, index: true, foreign_key: true
  end
end
