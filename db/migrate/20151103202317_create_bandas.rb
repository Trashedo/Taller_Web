class CreateBandas < ActiveRecord::Migration
  def change
    create_table :bandas do |t|
      t.string :nombre
      t.string :genero

      t.timestamps null: false
    end
  end
end
