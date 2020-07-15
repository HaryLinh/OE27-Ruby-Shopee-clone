


50.times do |n|

  ProductColor.create!(
    quantity: 100,
    color_id: Color.pluck(:id).sample,
    product_id: Product.pluck(:id).sample
    )
end
