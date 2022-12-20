class CreateBaseFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :base_favorites do |t|
      t.string :title

      t.timestamps
    end
  end
end
