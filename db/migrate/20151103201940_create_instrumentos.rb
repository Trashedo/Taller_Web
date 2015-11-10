class CreateInstrumentos < ActiveRecord::Migration
  def change
    create_table :instrumentos do |t|
      t.string :nombre
      t.string :tipo

      t.timestamps null: false
    end
  end
end
