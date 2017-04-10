class CreateCuadernos < ActiveRecord::Migration[5.0]
  
  def change
    create_table :cuadernos do |t|
      t.time :tiempo
      t.string :tipo
      t.float :beneficio
      
      t.timestamps
    end
  end
end
