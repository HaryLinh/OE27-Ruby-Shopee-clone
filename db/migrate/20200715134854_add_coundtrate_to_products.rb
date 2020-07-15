class AddCoundtrateToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :total_star, :integer
  end
end
