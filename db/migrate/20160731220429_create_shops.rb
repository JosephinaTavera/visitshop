class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
    	t.string :shop_name
    	t.string :address_1
    	t.string :address_2
    	t.string :city
    	t.string :state
    	t.string :zipcode
    end
  end
end
