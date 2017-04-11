class CreateCuadernos < ActiveRecord::Migration[5.0]
  def change
    create_table :cuadernos do |t|
      t.time :tiempo
      t.integer :tipo
      t.float :beneficio
      t.integer :liston
      t.string :imagen
      t.integer :resorte
      t.integer :tipohojas

      t.timestamps
    end
  end
end
