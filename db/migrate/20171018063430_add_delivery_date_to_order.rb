class AddDeliveryDateToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :delivery_date, :datetime
  end
end
