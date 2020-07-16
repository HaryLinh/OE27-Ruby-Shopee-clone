module Users::RatingsHelper
  def rate product_id, user_id
  a = Rating.find_by product_id: product_id, user_id: user_id
  end
end
