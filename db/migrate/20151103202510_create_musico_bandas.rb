class CreateMusicoBandas < ActiveRecord::Migration
  def change
    create_table :musico_bandas do |t|
      t.references :musico, index: true, foreign_key: true
      t.references :banda, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
