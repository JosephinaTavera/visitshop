class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
    	t.string :shop_name
    	t.string :full_address
        t.float :latitude
        t.float :longitude
    end
  end
end
