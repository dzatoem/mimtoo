class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.string :status
      t.references :action, foreign_key: true
      t.references :character, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
