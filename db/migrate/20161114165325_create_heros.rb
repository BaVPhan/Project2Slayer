class CreateHeros < ActiveRecord::Migration[5.0]
  def change
    create_table :heros do |t|
      t.string :name, null: false
      t.string :weapon_strength
      t.string :img_url
      t.timestamps
    end
  end
end
