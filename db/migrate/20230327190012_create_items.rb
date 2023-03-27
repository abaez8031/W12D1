class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.references :pokemon, foreign_key: true, null: false
      t.string :name, null: false
      t.integer :price, null: false
      t.integer :happiness, null:false
      t.string :image_url, null: false
      t.timestamps
    end
  end
end
