class AddCountrateToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :count_rate, :integer
  end
end
