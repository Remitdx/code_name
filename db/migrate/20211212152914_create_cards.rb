class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :word
      t.boolean :returned, default: false
      t.string :color
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
