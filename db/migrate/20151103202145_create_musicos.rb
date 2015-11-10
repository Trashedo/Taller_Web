class CreateMusicos < ActiveRecord::Migration
  def change
    create_table :musicos do |t|
      t.string :nombre
      t.string :paterno
      t.string :materno
      t.integer :usuario_id
      t.integer :instrumento_id
      t.references :usuario, index: true, foreign_key: true
      t.references :instrumento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
