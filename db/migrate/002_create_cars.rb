class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.decimal :atk
      t.decimal :def
      t.decimal :spd
      t.decimal :hp
      t.integer :wins
      t.integer :losses
      t.integer :tournament_wins
      t.integer :tournament_lossses
      t.integer :championship_game_matches
      t.integer :championship_wins

      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
