class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.integer :number
      t.string :name
      t.integer :attack
      t.integer :defense
      t.string :poke_type
      t.string :image_url
      t.boolean :captured

      t.timestamps
    end
    add_index :pokemons, :number, unique: true
    add_index :pokemons, :name, unique: true
  end
end
