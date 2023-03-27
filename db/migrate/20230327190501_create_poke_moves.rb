class CreatePokeMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :poke_moves do |t|
      t.references :pokemon, foreign_key: true, null: false, index: false
      t.references :move, foreign_key: true, null: false
      t.index [:pokemon_id, :move_id], unique: true
      t.timestamps
    end
  end
end
