class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.text :cuerpo
      t.integer :usuario_id
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
