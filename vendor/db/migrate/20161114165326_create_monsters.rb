class CreateMonsters < ActiveRecord::Migration[5.0]
  def change
    create_table :monsters do |t|
      t.string :name, null: false
      t.string :habitat
      t.string :img_url
      t.string :health
      t.references :hero, index: true, foreign_key: true
      t.timestamps
    end
  end
end
