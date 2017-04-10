class CreatePedidos < ActiveRecord::Migration[5.0]
  def change
    create_table :pedidos do |t|
      t.datetime :estimado
      t.integer :prioridad
      t.integer :status
      t.integer :cantidad
      t.date :fecha

      t.timestamps
    end
  end
end
