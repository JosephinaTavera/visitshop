class CreateComics < ActiveRecord::Migration[5.0]
  def change
    create_table :comics do |t|
      t.string :image
      t.string :name

      t.timestamps
    end
  end
end
